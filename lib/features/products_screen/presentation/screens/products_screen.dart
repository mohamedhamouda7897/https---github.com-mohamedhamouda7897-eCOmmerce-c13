import 'package:ecommerce_c13_friday/core/resources/values_manager.dart';
import 'package:ecommerce_c13_friday/di.dart';
import 'package:ecommerce_c13_friday/features/products_screen/presentation/bloc/product_bloc.dart';
import 'package:ecommerce_c13_friday/features/products_screen/presentation/widgets/custom_product_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/resources/assets_manager.dart';
import '../../../../core/widget/home_screen_app_bar.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return BlocProvider(
      create: (context) => getIt<ProductBloc>()..add((GetProductsEvent())),
      child: BlocConsumer<ProductBloc, ProductState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            appBar: const HomeScreenAppBar(
              automaticallyImplyLeading: true,

            ),
            body: Padding(
              padding: const EdgeInsets.all(AppPadding.p16),
              child: Column(
                children: [
                  Expanded(
                    child: GridView.builder(
                      itemCount: state.entity?.data?.length ?? 0,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 8,
                        mainAxisSpacing: 8,
                        childAspectRatio: 7 / 9,
                      ),
                      itemBuilder: (context, index) {
                        return CustomProductWidget(
                          id: state.entity?.data?[index].id ?? "",
                          image: state.entity?.data?[index].imageCover ?? "",
                          title: state.entity?.data?[index].title ?? "",
                          price: double.parse(
                              state.entity?.data?[index].price.toString() ??
                                  "0.0"),
                          rating: 4.7,
                          discountPercentage: 10,
                          height: height,
                          width: width,
                          description:
                              "Nike is a multinational corporation that designs, develops, and sells athletic footwear ,apparel, and accessories",
                        );
                      },
                      scrollDirection: Axis.vertical,
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
