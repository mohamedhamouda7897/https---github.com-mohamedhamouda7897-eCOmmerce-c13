import 'package:dartz/dartz.dart';
import 'package:ecommerce_c13_friday/core/failuers/failuers.dart';
import 'package:ecommerce_c13_friday/core/failuers/remote_failuers.dart';
import 'package:ecommerce_c13_friday/features/cart/data/datasources/cart_ds.dart';
import 'package:ecommerce_c13_friday/features/cart/domain/repository/cart_repo.dart';
import 'package:ecommerce_c13_friday/features/products_screen/data/models/CartModel.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: CartRepo)
class CartRepoImpl implements CartRepo {
  CartDS cartDS;

  CartRepoImpl(this.cartDS);

  @override
  Future<Either<RouteFailures, CartModel>> getCart() async {
    try {
      var result = await cartDS.getCart();

      return Right(result);
    } catch (e) {
      return Left(RemoteFailures(e.toString()));
      rethrow;
    }
  }
}
