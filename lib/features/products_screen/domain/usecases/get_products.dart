import 'package:dartz/dartz.dart';
import 'package:ecommerce_c13_friday/core/failures/route_failures.dart';
import 'package:ecommerce_c13_friday/features/products_screen/data/model/ProductModel.dart';
import 'package:ecommerce_c13_friday/features/products_screen/domain/repo/products_repo.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetProductUseCase {
  ProductsRepo repo;

  GetProductUseCase(this.repo);

  Future<Either<RouteFailures, ProductModel>> call({String? catId}) =>
      repo.getProducts(catId: catId);
}
