import 'package:dartz/dartz.dart';
import 'package:ecommerce_c13_friday/core/failuers/failuers.dart';
import 'package:ecommerce_c13_friday/core/failuers/remote_failuers.dart';
import 'package:ecommerce_c13_friday/core/resources/chace_helper.dart';
import 'package:ecommerce_c13_friday/features/auth/data/data_sources/remote/auth_remote_ds.dart';
import 'package:ecommerce_c13_friday/features/auth/data/models/auth_model.dart';
import 'package:ecommerce_c13_friday/features/auth/data/models/signup_request_model.dart';
import 'package:ecommerce_c13_friday/features/auth/domain/repository/auth_repo.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AuthRepo)
class AuthRepoImpl implements AuthRepo {
  AuthRemoteDS authRemoteDS;

  AuthRepoImpl(this.authRemoteDS);

  @override
  Future<Either<AuthModel, RouteFailures>> signUp(
      {required SignUpRequestModel request}) async {
    try {
      var result = await authRemoteDS.signUp(request: request);

     await SharedPrefs.set<String>("token", result.token ?? "");
      return Left(result);
    } catch (e) {
      return Right(RemoteFailures("Auth Error"));
      rethrow;
    }
  }

  @override
  Future<Either<RouteFailures, AuthModel>> login(
      {required String email, required String password}) async {
    try {
      var result = await authRemoteDS.login(email, password);
      await SharedPrefs.set<String>("token", result.token ?? "");

      return Right(result);
    } catch (e) {
      return Left(RemoteFailures("Auth Error"));
    }
  }
}
