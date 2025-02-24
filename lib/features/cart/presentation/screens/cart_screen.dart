import 'package:ecommerce_c13_friday/core/resources/assets_manager.dart';
import 'package:ecommerce_c13_friday/core/resources/color_manager.dart';
import 'package:ecommerce_c13_friday/core/resources/styles_manager.dart';
import 'package:ecommerce_c13_friday/core/resources/values_manager.dart';
import 'package:ecommerce_c13_friday/di.dart';
import 'package:ecommerce_c13_friday/features/cart/presentation/cart_bloc.dart';
import 'package:ecommerce_c13_friday/features/cart/presentation/widgets/cart_item_widget.dart';
import 'package:ecommerce_c13_friday/features/cart/presentation/widgets/total_price_and_checkout_botton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<CartBloc>()..add(GetCartDataEvent()),
      child: BlocConsumer<CartBloc, CartState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: Text(
                'Cart',
                style:
                    getMediumStyle(fontSize: 20, color: ColorManager.textColor),
              ),
              centerTitle: true,
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: ImageIcon(
                    AssetImage(
                      IconsAssets.icSearch,
                    ),
                    color: ColorManager.primary,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: ImageIcon(
                    AssetImage(IconsAssets.icCart),
                    color: ColorManager.primary,
                  ),
                ),
              ],
            ),
            body: Padding(
              padding: const EdgeInsets.all(AppPadding.p14),
              child: Column(
                children: [
                  Expanded(
                    // the list of cart items ===============
                    child: ListView.separated(
                      itemBuilder: (context, index) => CartItemWidget(
                        imagePath: state.cartModel?.data?.products?[index]
                                .product?.imageCover ??
                            "",
                        title: state.cartModel?.data?.products?[index].product
                                ?.title ??
                            "",
                        price: int.parse(state
                                .cartModel?.data?.products?[index].price
                                .toString() ??
                            "0"),
                        quantity: int.parse(state
                                .cartModel?.data?.products?[index].count
                                .toString() ??
                            "0"),
                        onDeleteTap: () {},
                        onDecrementTap: (value) {},
                        onIncrementTap: (value) {},
                        size: 40,
                        color: Colors.black,
                        colorName: 'Black',
                      ),
                      separatorBuilder: (context, index) =>
                          SizedBox(height: AppSize.s12.h),
                      itemCount: state.cartModel?.numOfCartItems ?? 0,
                    ),
                  ),
                  // the total price and checkout button========
                  TotalPriceAndCheckoutBotton(
                    totalPrice: 1200,
                    checkoutButtonOnTap: () {},
                  ),
                  SizedBox(height: 10.h),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
