import 'package:dartz/dartz.dart';
import 'package:ecommerce_c13_friday/core/failures/failures.dart';
import 'package:ecommerce_c13_friday/features/main_layout/home/data/models/categories_model.dart';
import 'package:ecommerce_c13_friday/features/main_layout/home/domain/repository/home_repo.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetCategoriesUseCase {
  HomeRepo homeRepo;

  GetCategoriesUseCase(this.homeRepo);

  Future<Either<RouteFailures, CategoriesModel>> call() =>
      homeRepo.getCategories();
}
