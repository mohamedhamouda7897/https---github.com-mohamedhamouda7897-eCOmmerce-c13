import 'package:dartz/dartz.dart';
import 'package:ecommerce_c13_friday/core/failuers/failuers.dart';
import 'package:ecommerce_c13_friday/features/auth/data/models/auth_model.dart';
import 'package:ecommerce_c13_friday/features/auth/data/models/signup_request_model.dart';

abstract class AuthRepo {
  Future<Either<AuthModel,RouteFailures>> signUp({required SignUpRequestModel request});
}
