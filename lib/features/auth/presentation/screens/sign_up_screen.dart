import 'package:ecommerce_c13_friday/core/api/api_manager.dart';
import 'package:ecommerce_c13_friday/core/routes_manager/routes.dart';
import 'package:ecommerce_c13_friday/core/widget/custom_elevated_button.dart';
import 'package:ecommerce_c13_friday/di.dart';
import 'package:ecommerce_c13_friday/features/auth/data/data_sources/remote/auth_ds_impl.dart';
import 'package:ecommerce_c13_friday/features/auth/data/models/singup_request_model.dart';
import 'package:ecommerce_c13_friday/features/auth/data/repository/auth_repo_impl.dart';
import 'package:ecommerce_c13_friday/features/auth/domain/usecases/login_use_case.dart';
import 'package:ecommerce_c13_friday/features/auth/domain/usecases/sign_up_use_case.dart';
import 'package:ecommerce_c13_friday/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/resources/assets_manager.dart';
import '../../../../core/resources/color_manager.dart';
import '../../../../core/resources/styles_manager.dart';
import '../../../../core/resources/values_manager.dart';
import '../../../../core/widget/main_text_field.dart';
import '../../../../core/widget/validators.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var phoneController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AuthBloc>(),
      child: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state.signUpRequestState == RequestState.loading) {
            showDialog(
              context: context,
              builder: (context) => const AlertDialog(
                title: Center(child: CircularProgressIndicator()),
                backgroundColor: Colors.transparent,
              ),
            );
          } else if (state.signUpRequestState == RequestState.error) {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: const Text("Error"),
                content:
                    Text(state.failures?.message ?? "Something went wrong"),
                actions: [
                  ElevatedButton(onPressed: () {}, child: const Text("Okay"))
                ],
              ),
            );
          } else if (state.signUpRequestState == RequestState.loaded) {
            Navigator.pushNamedAndRemoveUntil(
              context,
              Routes.mainRoute,
              (route) => false,
            );
          }
        },
        builder: (context, state) {
          return Scaffold(
            backgroundColor: ColorManager.primary,
            body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(AppPadding.p20),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: AppSize.s40.h,
                      ),
                      Center(child: SvgPicture.asset(SvgAssets.routeLogo)),
                      SizedBox(
                        height: AppSize.s40.h,
                      ),
                      BuildTextField(
                        controller: nameController,
                        backgroundColor: ColorManager.white,
                        hint: 'enter your full name',
                        label: 'Full Name',
                        textInputType: TextInputType.name,
                        validation: AppValidators.validateFullName,
                      ),
                      SizedBox(
                        height: AppSize.s18.h,
                      ),
                      BuildTextField(
                        hint: 'enter your mobile no.',
                        controller: phoneController,
                        backgroundColor: ColorManager.white,
                        label: 'Mobile Number',
                        validation: AppValidators.validatePhoneNumber,
                        textInputType: TextInputType.phone,
                      ),
                      SizedBox(
                        height: AppSize.s18.h,
                      ),
                      BuildTextField(
                        hint: 'enter your email address',
                        backgroundColor: ColorManager.white,
                        controller: emailController,
                        label: 'E-mail address',
                        validation: AppValidators.validateEmail,
                        textInputType: TextInputType.emailAddress,
                      ),
                      SizedBox(
                        height: AppSize.s18.h,
                      ),
                      BuildTextField(
                        hint: 'enter your password',
                        backgroundColor: ColorManager.white,
                        controller: passwordController,
                        label: 'password',
                        validation: AppValidators.validatePassword,
                        isObscured: true,
                        textInputType: TextInputType.text,
                      ),
                      SizedBox(
                        height: AppSize.s50.h,
                      ),
                      Center(
                        child: SizedBox(
                          height: AppSize.s60.h,
                          width: MediaQuery.of(context).size.width * .9,
                          child: CustomElevatedButton(
                            // borderRadius: AppSize.s8,
                            label: 'Sign Up',
                            backgroundColor: ColorManager.white,
                            textStyle: getBoldStyle(
                                color: ColorManager.primary,
                                fontSize: AppSize.s20),
                            onTap: () {
                              SignUpRequestModel model = SignUpRequestModel(
                                  phone: phoneController.text,
                                  rePassword: passwordController.text,
                                  password: passwordController.text,
                                  name: nameController.text,
                                  email: emailController.text);
                              BlocProvider.of<AuthBloc>(context)
                                  .add(SignUpEvent(model));
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
