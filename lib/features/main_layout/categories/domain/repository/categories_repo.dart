import 'package:dartz/dartz.dart';
import 'package:ecommerce_c13_friday/core/failures/failures.dart';
import 'package:ecommerce_c13_friday/features/main_layout/home/data/models/categories_model.dart';

abstract class CategoriesRepo {
  Future<Either<RouteFailures, CategoriesModel>> getSubCategory(String catId);
}
