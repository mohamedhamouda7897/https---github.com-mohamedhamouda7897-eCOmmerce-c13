import 'package:dartz/dartz.dart';
import 'package:ecommerce_c13_friday/core/failuers/failuers.dart';
import 'package:ecommerce_c13_friday/features/products_screen/data/models/CartModel.dart';
import 'package:ecommerce_c13_friday/features/products_screen/data/models/ProductModel.dart';

abstract class ProductRepo {
  Future<Either<RouteFailures, ProductModel>> getProduct({String? catId});

  Future<Either<RouteFailures, CartModel>> addToCart({String? prodId});
}
