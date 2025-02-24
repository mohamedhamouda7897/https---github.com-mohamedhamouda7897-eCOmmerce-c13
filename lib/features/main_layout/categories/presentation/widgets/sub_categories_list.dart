import 'package:ecommerce_c13_friday/core/resources/assets_manager.dart';
import 'package:ecommerce_c13_friday/core/resources/color_manager.dart';
import 'package:ecommerce_c13_friday/core/resources/font_manager.dart';
import 'package:ecommerce_c13_friday/core/resources/styles_manager.dart';
import 'package:ecommerce_c13_friday/core/resources/values_manager.dart';
import 'package:ecommerce_c13_friday/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:ecommerce_c13_friday/features/main_layout/categories/presentation/bloc/categories_bloc.dart';
import 'package:ecommerce_c13_friday/features/main_layout/categories/presentation/widgets/category_card_item.dart';
import 'package:ecommerce_c13_friday/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loader_overlay/loader_overlay.dart';

import 'sub_category_item.dart';

class SubCategoriesList extends StatelessWidget {
  const SubCategoriesList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CategoriesBloc, CategoriesState>(
      listener: (context, state) {
        if (state.getSubCategoriesState == RequestState.loading) {
          context.loaderOverlay.show();
        } else {
          context.loaderOverlay.hide();
        }
      },
      builder: (context, state) {
        return Expanded(
          flex: 2,
          child: CustomScrollView(
            slivers: <Widget>[
              // category title
              SliverToBoxAdapter(
                child: Text(
                  'Laptops & Electronics',
                  style: getBoldStyle(
                      color: ColorManager.primary, fontSize: FontSize.s14),
                ),
              ),
              // the category card
              SliverToBoxAdapter(
                child: CategoryCardItem(
                    "Laptops & Electronics",
                    ImageAssets.categoryCardImage,
                    goToCategoryProductsListScreen),
              ),
              // the grid view of the subcategories
              SliverGrid(
                  delegate: SliverChildBuilderDelegate(
                    childCount: state.subEntity?.data?.length ?? 0,
                    (context, index) => SubCategoryItem(
                        state.subEntity?.data?[index].name ?? "",
                        ImageAssets.subcategoryCardImage,
                        goToCategoryProductsListScreen),
                  ),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 0.75,
                    mainAxisSpacing: AppSize.s8,
                    crossAxisSpacing: AppSize.s8,
                  ))
            ],
          ),
        );
      },
    );
  }

  goToCategoryProductsListScreen() {
    // todo implement this function
  }
}
