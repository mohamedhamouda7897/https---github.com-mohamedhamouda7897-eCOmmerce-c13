import 'package:dartz/dartz.dart';
import 'package:ecommerce_c13_friday/core/failures/route_failures.dart';
import 'package:ecommerce_c13_friday/features/main_layout/home/data/models/CategoryModel.dart';
import 'package:ecommerce_c13_friday/features/main_layout/home/domain/entity/categoryEntity.dart';

abstract class HomeRepo {
  Future<Either<RouteFailures, CategoryEntity>> getCategories();
  Future<Either<RouteFailures, CategoryEntity>> getSubCategories(String catId);
}
