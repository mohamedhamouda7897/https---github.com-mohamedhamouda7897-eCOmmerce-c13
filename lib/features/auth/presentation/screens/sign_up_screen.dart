import 'package:ecommerce_c13_friday/core/api/api_manager.dart';
import 'package:ecommerce_c13_friday/core/routes_manager/routes.dart';
import 'package:ecommerce_c13_friday/core/widget/custom_elevated_button.dart';
import 'package:ecommerce_c13_friday/di.dart';
import 'package:ecommerce_c13_friday/features/auth/data/data_sources/remote/auth_remote_ds_impl.dart';
import 'package:ecommerce_c13_friday/features/auth/data/models/signup_requestModel.dart';
import 'package:ecommerce_c13_friday/features/auth/data/repository/auth_repo_impl.dart';
import 'package:ecommerce_c13_friday/features/auth/domain/usecases/login_usecase.dart';
import 'package:ecommerce_c13_friday/features/auth/domain/usecases/signup_usecase.dart';
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

  var emailController = TextEditingController();
  var nameController = TextEditingController();
  var passwordController = TextEditingController();
  var phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AuthBloc>(),
      child: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state.signUpRequestState == RequestState.loading) {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  backgroundColor: Colors.transparent,
                  title: Center(child: CircularProgressIndicator()),
                );
              },
            );
          } else if (state.signUpRequestState == RequestState.error) {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text("Error"),
                  content: Text(state.failures?.message ?? ""),
                  actions: [
                    ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                          Navigator.pop(context);
                        },
                        child: Text("Ok"))
                  ],
                );
              },
            );
          } else if (state.signUpRequestState == RequestState.success) {
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
                        backgroundColor: ColorManager.white,
                        hint: 'enter your full name',
                        label: 'Full Name',
                        controller: nameController,
                        textInputType: TextInputType.name,
                        validation: AppValidators.validateFullName,
                      ),
                      SizedBox(
                        height: AppSize.s18.h,
                      ),
                      BuildTextField(
                        hint: 'enter your mobile no.',
                        backgroundColor: ColorManager.white,
                        label: 'Mobile Number',
                        controller: phoneController,
                        validation: AppValidators.validatePhoneNumber,
                        textInputType: TextInputType.phone,
                      ),
                      SizedBox(
                        height: AppSize.s18.h,
                      ),
                      BuildTextField(
                        hint: 'enter your email address',
                        backgroundColor: ColorManager.white,
                        label: 'E-mail address',
                        controller: emailController,
                        validation: AppValidators.validateEmail,
                        textInputType: TextInputType.emailAddress,
                      ),
                      SizedBox(
                        height: AppSize.s18.h,
                      ),
                      BuildTextField(
                        hint: 'enter your password',
                        backgroundColor: ColorManager.white,
                        label: 'password',
                        controller: passwordController,
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
                              SignUpRequestModel requestModel =
                                  SignUpRequestModel(
                                      email: emailController.text,
                                      name: nameController.text,
                                      password: passwordController.text,
                                      rePassword: passwordController.text,
                                      phone: phoneController.text);
                              AuthBloc.get(context)
                                  .add(SignUpBtnEvent(requestModel));
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
