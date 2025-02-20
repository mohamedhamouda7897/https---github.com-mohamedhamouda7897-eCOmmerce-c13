import 'package:dartz/dartz.dart';
import 'package:ecommerce_c13_friday/core/failures/failures.dart';
import 'package:ecommerce_c13_friday/core/failures/remote_failures.dart';
import 'package:ecommerce_c13_friday/features/auth/data/data_sources/remote/auth_ds.dart';
import 'package:ecommerce_c13_friday/features/auth/data/models/auth_model.dart';
import 'package:ecommerce_c13_friday/features/auth/data/models/singup_request_model.dart';
import 'package:ecommerce_c13_friday/features/auth/domain/repository/auth_repo.dart';
import 'package:injectable/injectable.dart';


@Injectable(as:AuthRepo )
class AuthRepoImpl implements AuthRepo {
  AuthDS authDS;

  AuthRepoImpl(this.authDS);

  @override
  Future<Either<RouteFailures, AuthModel>> signUp(
      SignUpRequestModel request) async {
    try {
      print(request.toJson());
      var result = await authDS.signUp(request);
      return Right(result);
    } catch (e) {
      return Left(RemoteFailures(e.toString()));
    }
  }

  @override
  Future<Either<RouteFailures, AuthModel>> login(
      String email, String password) async {
    try {
      var result = await authDS.login(email, password);
      return Right(result);
    } catch (e) {
      return Left(RemoteFailures(e.toString()));
    }
  }
}
