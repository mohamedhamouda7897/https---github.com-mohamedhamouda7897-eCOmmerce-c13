import 'package:ecommerce_c13_friday/features/products_screen/data/models/CartModel.dart';
import 'package:ecommerce_c13_friday/features/products_screen/data/models/ProductModel.dart';

abstract class ProductDS {
  Future<ProductModel> getProduct({String? id});
  Future<CartModel> addToCart({String? id});
}
