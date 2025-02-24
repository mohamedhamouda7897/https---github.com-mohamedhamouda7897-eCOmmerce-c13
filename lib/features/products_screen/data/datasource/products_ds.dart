import 'package:ecommerce_c13_friday/features/products_screen/data/model/CartModel.dart';
import 'package:ecommerce_c13_friday/features/products_screen/data/model/CartResponse.dart';
import 'package:ecommerce_c13_friday/features/products_screen/data/model/ProductModel.dart';

abstract class ProductsDS {
  Future<ProductModel> getProducts({String? catId});

  Future<CartModel> addToCart({required String prodId});

  Future<CartResponse> getCartData();


}
