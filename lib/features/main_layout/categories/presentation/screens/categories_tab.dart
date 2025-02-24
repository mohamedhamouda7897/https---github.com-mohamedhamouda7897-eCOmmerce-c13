import 'package:ecommerce_c13_friday/core/resources/values_manager.dart';
import 'package:ecommerce_c13_friday/di.dart';
import 'package:ecommerce_c13_friday/features/main_layout/categories/presentation/bloc/categories_bloc.dart';
import 'package:ecommerce_c13_friday/features/main_layout/categories/presentation/widgets/categories_list.dart';
import 'package:ecommerce_c13_friday/features/main_layout/categories/presentation/widgets/sub_categories_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoriesTab extends StatelessWidget {
  const CategoriesTab({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<CategoriesBloc>()..add(TabGetCategoriesEvent()),
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: AppPadding.p12, vertical: AppPadding.p12),
        child: Row(
          children: [
            CategoriesList(),
            SizedBox(
              width: AppSize.s16,
            ),
            SubCategoriesList()
          ],
        ),
      ),
    );
  }
}
