import 'package:dartz/dartz.dart';
import 'package:ecommerce_c13_friday/core/failures/failures.dart';
import 'package:ecommerce_c13_friday/features/auth/data/models/auth_model.dart';
import 'package:ecommerce_c13_friday/features/auth/data/models/singup_request_model.dart';

abstract class AuthRepo {
  Future<Either<RouteFailures, AuthModel>> signUp(SignUpRequestModel request);

  Future<Either<RouteFailures, AuthModel>> login(String email, String password);
}
