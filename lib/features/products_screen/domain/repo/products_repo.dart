import 'package:dartz/dartz.dart';
import 'package:ecommerce_c13_friday/core/failures/route_failures.dart';
import 'package:ecommerce_c13_friday/features/products_screen/data/model/CartModel.dart';
import 'package:ecommerce_c13_friday/features/products_screen/data/model/CartResponse.dart';
import 'package:ecommerce_c13_friday/features/products_screen/data/model/ProductModel.dart';

abstract class ProductsRepo {
  Future<Either<RouteFailures, ProductModel>> getProducts({String? catId});
  Future<Either<RouteFailures, CartModel>> addToCart({required String prodId});
  Future<Either<RouteFailures, CartResponse>> getCartData();
}
