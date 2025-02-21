import 'package:dartz/dartz.dart';
import 'package:ecommerce_c13_friday/core/failuers/failuers.dart';
import 'package:ecommerce_c13_friday/features/products_screen/data/models/CartModel.dart';
import 'package:ecommerce_c13_friday/features/products_screen/data/models/ProductModel.dart';
import 'package:ecommerce_c13_friday/features/products_screen/domain/repository/products_repo.dart';
import 'package:injectable/injectable.dart';

@injectable
class AddToCartUseCase {
  ProductRepo repo;

  AddToCartUseCase(this.repo);

  Future<Either<RouteFailures, CartModel>> call({String? id}) =>
      repo.addToCart(prodId: id);
}
