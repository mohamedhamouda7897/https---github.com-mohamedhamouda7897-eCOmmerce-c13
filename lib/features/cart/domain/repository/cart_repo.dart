import 'package:dartz/dartz.dart';
import 'package:ecommerce_c13_friday/core/failuers/failuers.dart';
import 'package:ecommerce_c13_friday/features/products_screen/data/models/CartModel.dart';

abstract class CartRepo {
  Future<Either<RouteFailures, CartModel>> getCart();
}
