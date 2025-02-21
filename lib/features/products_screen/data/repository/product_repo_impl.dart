import 'package:dartz/dartz.dart';
import 'package:ecommerce_c13_friday/core/failuers/failuers.dart';
import 'package:ecommerce_c13_friday/core/failuers/remote_failuers.dart';
import 'package:ecommerce_c13_friday/features/products_screen/data/datasource/product_ds.dart';
import 'package:ecommerce_c13_friday/features/products_screen/data/datasource/product_ds_impl.dart';
import 'package:ecommerce_c13_friday/features/products_screen/data/models/CartModel.dart';
import 'package:ecommerce_c13_friday/features/products_screen/data/models/ProductModel.dart';
import 'package:ecommerce_c13_friday/features/products_screen/domain/repository/products_repo.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ProductRepo)
class ProductRepoImpl implements ProductRepo {
  ProductDS productDS;

  ProductRepoImpl(this.productDS);

  @override
  Future<Either<RouteFailures, ProductModel>> getProduct(
      {String? catId}) async {
    try {
      var result = await productDS.getProduct(id: catId);

      print("C13 -- ${result.results}");
      return Right(result);
    } catch (e) {
      return Left(RemoteFailures(e.toString()));
    }
  }

  @override
  Future<Either<RouteFailures, CartModel>> addToCart({String? prodId}) async {
    try {
      var result = await productDS.addToCart(id: prodId);

      return Right(result);
    } catch (e) {
      return Left(RemoteFailures(e.toString()));
    }
  }
}
