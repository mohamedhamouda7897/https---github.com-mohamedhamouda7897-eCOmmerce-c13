import 'package:dartz/dartz.dart';
import 'package:ecommerce_c13_friday/core/failuers/failuers.dart';
import 'package:ecommerce_c13_friday/core/failuers/remote_failuers.dart';
import 'package:ecommerce_c13_friday/features/auth/data/data_sources/remote/auth_remote_ds.dart';
import 'package:ecommerce_c13_friday/features/auth/data/models/auth_model.dart';
import 'package:ecommerce_c13_friday/features/auth/data/models/signup_request_model.dart';
import 'package:ecommerce_c13_friday/features/auth/domain/repository/auth_repo.dart';

class AuthRepoImpl implements AuthRepo {
  AuthRemoteDS authRemoteDS;

  AuthRepoImpl(this.authRemoteDS);

  @override
  Future<Either<AuthModel, RouteFailures>> signUp(
      {required SignUpRequestModel request}) async {
    try {
      var result = await authRemoteDS.signUp(request: request);
      return Left(result);
    } catch (e) {
      return Right(RemoteFailures("Auth Error"));
      rethrow;
    }
  }
}
