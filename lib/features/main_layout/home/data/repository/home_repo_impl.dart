import 'package:dartz/dartz.dart';
import 'package:ecommerce_c13_friday/core/failures/remote_failures.dart';
import 'package:ecommerce_c13_friday/core/failures/route_failures.dart';
import 'package:ecommerce_c13_friday/features/main_layout/home/data/datasources/remote/home_ds.dart';
import 'package:ecommerce_c13_friday/features/main_layout/home/data/models/CategoryModel.dart';
import 'package:ecommerce_c13_friday/features/main_layout/home/domain/entity/categoryEntity.dart';
import 'package:ecommerce_c13_friday/features/main_layout/home/domain/repository/home_repo.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: HomeRepo)
class HomeRepoImpl implements HomeRepo {
  HomeDS homeDS;

  HomeRepoImpl(this.homeDS);

  @override
  Future<Either<RouteFailures, CategoryEntity>> getCategories() async {
    try {
      CategoryModel model = await homeDS.getCategories();

      return Right(model);
    } catch (e) {
      return Left(RemoteFailures(e.toString()));
    }
  }

  @override
  Future<Either<RouteFailures, CategoryEntity>> getSubCategories(
      String catId) async {
    try {
      CategoryModel model = await homeDS.getSubCategories(catId);

      return Right(model);
    } catch (e) {
      return Left(RemoteFailures(e.toString()));
    }
  }
}
