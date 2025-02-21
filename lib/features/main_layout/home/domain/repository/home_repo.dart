import 'package:dartz/dartz.dart';
import 'package:ecommerce_c13_friday/core/failuers/failuers.dart';
import 'package:ecommerce_c13_friday/features/main_layout/home/data/models/CategoriesModel.dart';

abstract class HomeRepo {
  Future<Either<RouteFailures, CategoriesModel>> getCategories();
  Future<Either<RouteFailures, CategoriesModel>> getSubCategories(String id);
}
