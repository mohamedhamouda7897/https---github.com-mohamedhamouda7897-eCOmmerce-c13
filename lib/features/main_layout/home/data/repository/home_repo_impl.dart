import 'package:dartz/dartz.dart';
import 'package:ecommerce_c13_friday/core/failures/failures.dart';
import 'package:ecommerce_c13_friday/core/failures/remote_failures.dart';
import 'package:ecommerce_c13_friday/features/main_layout/home/data/datasources/remote/home_remote_ds.dart';
import 'package:ecommerce_c13_friday/features/main_layout/home/data/models/categories_model.dart';
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
      return Left(RemoteFailures(e.toString()));
    }
  }
}
