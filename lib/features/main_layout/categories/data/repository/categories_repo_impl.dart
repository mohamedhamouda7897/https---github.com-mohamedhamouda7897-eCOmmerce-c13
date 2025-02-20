import 'package:dartz/dartz.dart';
import 'package:ecommerce_c13_friday/core/failures/failures.dart';
import 'package:ecommerce_c13_friday/core/failures/remote_failures.dart';
import 'package:ecommerce_c13_friday/features/main_layout/categories/data/datasources/remote/categories_ds.dart';
import 'package:ecommerce_c13_friday/features/main_layout/categories/domain/repository/categories_repo.dart';
import 'package:ecommerce_c13_friday/features/main_layout/home/data/models/categories_model.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: CategoriesRepo)
class CategoriesRepoImpl implements CategoriesRepo {
  CategoriesDS categoriesDS;

  CategoriesRepoImpl(this.categoriesDS);

  @override
  Future<Either<RouteFailures, CategoriesModel>> getSubCategory(
      String catId) async {
    try {
      var result = await categoriesDS.getSubCategories(catId);
      return Right(result);
    } catch (e) {
      return Left(RemoteFailures(e.toString()));
    }
  }
}
