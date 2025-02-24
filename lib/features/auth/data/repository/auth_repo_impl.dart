import 'package:dartz/dartz.dart';
import 'package:ecommerce_c13_friday/core/failures/remote_failures.dart';
import 'package:ecommerce_c13_friday/core/failures/route_failures.dart';
import 'package:ecommerce_c13_friday/core/resources/cache_helper.dart';
import 'package:ecommerce_c13_friday/features/auth/data/data_sources/remote/auth_remote_ds.dart';
import 'package:ecommerce_c13_friday/features/auth/data/models/auth_model.dart';
import 'package:ecommerce_c13_friday/features/auth/data/models/signup_requestModel.dart';
import 'package:ecommerce_c13_friday/features/auth/domain/repository/auth_repo.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AuthRepo)
class AuthRepoImpl implements AuthRepo {
  AuthRemoteDS authRemoteDS;

  AuthRepoImpl(this.authRemoteDS);

  @override
  Future<Either<RouteFailures, AuthModel>> signUp(
      SignUpRequestModel request) async {
    try {
      var result = await authRemoteDS.signUp(request);
      if (result.message != "success") {
        return Left(RemoteFailures(result.message ?? ""));
      }
      return Right(result);
    } catch (e) {
      return Left(RemoteFailures(e.toString()));
    }
  }

  @override
  Future<Either<RouteFailures, AuthModel>> login(
      String email, String password) async {
    try {
      var result = await authRemoteDS.login(email, password);
      if (result.message != "success") {
        return Left(RemoteFailures(result.message ?? ""));
      }
      await SharedPreferencesManager.save<String>("TOKEN", result.token??"");
      return Right(result);
    } catch (e) {
      return Left(RemoteFailures(e.toString()));
    }
  }
}
