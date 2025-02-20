import 'package:dartz/dartz.dart';
import 'package:ecommerce_c13_friday/core/failures/failures.dart';
import 'package:ecommerce_c13_friday/features/main_layout/categories/domain/repository/categories_repo.dart';
import 'package:ecommerce_c13_friday/features/main_layout/home/data/models/categories_model.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetSubCategoriesUceCase {
  CategoriesRepo repo;

  GetSubCategoriesUceCase(this.repo);

  Future<Either<RouteFailures, CategoriesModel>> call(String catId) =>
      repo.getSubCategory(catId);
}
