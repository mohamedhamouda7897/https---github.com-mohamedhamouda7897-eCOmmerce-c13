import 'package:ecommerce_c13_friday/core/resources/color_manager.dart';
import 'package:ecommerce_c13_friday/core/resources/styles_manager.dart';
import 'package:ecommerce_c13_friday/core/resources/values_manager.dart';
import 'package:ecommerce_c13_friday/core/routes_manager/routes.dart';
import 'package:ecommerce_c13_friday/features/main_layout/home/presentation/bloc/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SubCategoryItem extends StatelessWidget {
  final String title;
  final String image;
  final Function navigation;

  const SubCategoryItem(this.title, this.image, this.navigation, {super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        var data =
            await Navigator.pushNamed(context, Routes.productsScreenRoute);
        BlocProvider.of<HomeBloc>(context).add(GetCartEvent());
      },
      overlayColor: WidgetStateProperty.all(Colors.transparent),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppSize.s12),
                  border: Border.all(color: ColorManager.primary, width: 2)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(AppSize.s10),
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Text(
            title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: getRegularStyle(color: ColorManager.primary),
          )
        ],
      ),
    );
  }
}
