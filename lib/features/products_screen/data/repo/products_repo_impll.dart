import 'package:dartz/dartz.dart';
import 'package:ecommerce_c13_friday/core/failures/remote_failures.dart';
import 'package:ecommerce_c13_friday/core/failures/route_failures.dart';
import 'package:ecommerce_c13_friday/features/products_screen/data/datasource/products_ds.dart';
import 'package:ecommerce_c13_friday/features/products_screen/data/model/CartModel.dart';
import 'package:ecommerce_c13_friday/features/products_screen/data/model/CartResponse.dart';
import 'package:ecommerce_c13_friday/features/products_screen/data/model/ProductModel.dart';
import 'package:ecommerce_c13_friday/features/products_screen/domain/repo/products_repo.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ProductsRepo)
class ProductsRepoImpl implements ProductsRepo {
  ProductsDS productsDS;

  ProductsRepoImpl(this.productsDS);

  @override
  Future<Either<RouteFailures, ProductModel>> getProducts(
      {String? catId}) async {
    try {
      ProductModel model = await productsDS.getProducts(catId: catId);

      return Right(model);
    } catch (e) {
      return Left(RemoteFailures(e.toString()));
    }
  }

  @override
  Future<Either<RouteFailures, CartModel>> addToCart(
      {required String prodId}) async {
    try {
      CartModel model = await productsDS.addToCart(prodId: prodId);

      return Right(model);
    } catch (e) {
      return Left(RemoteFailures(e.toString()));
    }
  }

  @override
  Future<Either<RouteFailures, CartResponse>> getCartData() async{
    try {
      CartResponse model = await productsDS.getCartData();

      return Right(model);
    } catch (e) {
      return Left(RemoteFailures(e.toString()));
    }
  }
}
