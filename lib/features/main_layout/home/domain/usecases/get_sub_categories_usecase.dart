import 'package:dartz/dartz.dart';
import 'package:ecommerce_c13_friday/core/failures/route_failures.dart';
import 'package:ecommerce_c13_friday/features/main_layout/home/domain/entity/categoryEntity.dart';
import 'package:ecommerce_c13_friday/features/main_layout/home/domain/repository/home_repo.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetSubCategoriesUseCase {
  HomeRepo repo;

  GetSubCategoriesUseCase(this.repo);

  Future<Either<RouteFailures, CategoryEntity>> call(String catId) => repo.getSubCategories(catId);
}
