import 'package:dartz/dartz.dart';
import 'package:ecommerce_c13_friday/core/failuers/failuers.dart';
import 'package:ecommerce_c13_friday/features/cart/domain/repository/cart_repo.dart';
import 'package:ecommerce_c13_friday/features/products_screen/data/models/CartModel.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetCartUseCase {
  CartRepo repo;

  GetCartUseCase(this.repo);

  Future<Either<RouteFailures, CartModel>> call() => repo.getCart();
}
