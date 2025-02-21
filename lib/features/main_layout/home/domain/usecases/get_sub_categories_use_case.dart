import 'package:dartz/dartz.dart';
import 'package:ecommerce_c13_friday/core/failuers/failuers.dart';
import 'package:ecommerce_c13_friday/features/main_layout/home/data/models/CategoriesModel.dart';
import 'package:ecommerce_c13_friday/features/main_layout/home/domain/repository/home_repo.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetSubCategoriesUseCase {
  HomeRepo repo;

  GetSubCategoriesUseCase(this.repo);

  Future<Either<RouteFailures, CategoriesModel>> call(String id) =>
      repo.getSubCategories(id);
}
