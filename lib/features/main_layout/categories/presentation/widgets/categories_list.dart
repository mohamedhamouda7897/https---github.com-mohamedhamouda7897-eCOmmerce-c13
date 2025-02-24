import 'package:ecommerce_c13_friday/core/resources/color_manager.dart';
import 'package:ecommerce_c13_friday/core/resources/values_manager.dart';
import 'package:ecommerce_c13_friday/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:ecommerce_c13_friday/features/main_layout/categories/presentation/bloc/categories_bloc.dart';
import 'package:ecommerce_c13_friday/features/main_layout/categories/presentation/widgets/category_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loader_overlay/loader_overlay.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CategoriesBloc, CategoriesState>(
      listener: (context, state) {
        if (state.getCategoriesState == RequestState.loading) {
          context.loaderOverlay.show();
        } else {
          context.loaderOverlay.hide();
        }
      },
      builder: (context, state) {
        return Expanded(
            child: Container(
          decoration: BoxDecoration(
            color: ColorManager.containerGray,
            border: Border(
                // set the border for only 3 sides
                top: BorderSide(
                    width: AppSize.s2,
                    color: ColorManager.primary.withOpacity(0.3)),
                left: BorderSide(
                    width: AppSize.s2,
                    color: ColorManager.primary.withOpacity(0.3)),
                bottom: BorderSide(
                    width: AppSize.s2,
                    color: ColorManager.primary.withOpacity(0.3))),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(AppSize.s12),
              bottomLeft: Radius.circular(AppSize.s12),
            ),
          ),

          // the categories items list
          child: ClipRRect(
            // clip the corners of the container that hold the list view
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(AppSize.s12),
              bottomLeft: Radius.circular(AppSize.s12),
            ),
            child: ListView.builder(
              itemCount: state.entity?.data?.length ?? 0,
              itemBuilder: (context, index) => CategoryItem(
                  index,
                  state.entity?.data?[index].name ?? "",
                  state.selectedIndex == index,
                  onItemClick),
            ),
          ),
        ));
      },
    );
  }

  // callback function to change the selected index
  onItemClick(int index, BuildContext context) {
    BlocProvider.of<CategoriesBloc>(context).add(ChangeCategoryEvent(index));
  }
}
