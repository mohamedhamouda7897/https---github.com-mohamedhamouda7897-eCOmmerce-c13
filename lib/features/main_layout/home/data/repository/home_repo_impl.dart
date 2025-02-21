import 'package:dartz/dartz.dart';
import 'package:ecommerce_c13_friday/core/failuers/failuers.dart';
import 'package:ecommerce_c13_friday/core/failuers/remote_failuers.dart';
import 'package:ecommerce_c13_friday/features/main_layout/home/data/datasources/remote/home_remote_ds.dart';
import 'package:ecommerce_c13_friday/features/main_layout/home/data/models/CategoriesModel.dart';
import 'package:ecommerce_c13_friday/features/main_layout/home/domain/repository/home_repo.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: HomeRepo)
class HomeRepoImpl implements HomeRepo {
  HomeRemoteDS homeRemoteDS;

  HomeRepoImpl(this.homeRemoteDS);

  @override
  Future<Either<RouteFailures, CategoriesModel>> getCategories() async {
    try {
      var result = await homeRemoteDS.getCategories();

      return Right(result);
    } catch (e) {
      return Left(RemoteFailures("General Issue"));
    }
  }

  @override
  Future<Either<RouteFailures, CategoriesModel>> getSubCategories(
      String id) async {
    try {
      var result = await homeRemoteDS.getSubCategories(id);

      return Right(result);
    } catch (e) {
      return Left(RemoteFailures("General Issue"));
    }
  }
}
