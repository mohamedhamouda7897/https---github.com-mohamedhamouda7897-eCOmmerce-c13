import 'package:dartz/dartz.dart';
import 'package:ecommerce_c13_friday/core/failuers/failuers.dart';
import 'package:ecommerce_c13_friday/features/auth/data/models/auth_model.dart';
import 'package:ecommerce_c13_friday/features/auth/data/models/signup_request_model.dart';
import 'package:ecommerce_c13_friday/features/auth/domain/repository/auth_repo.dart';

class SignUpUseCase {
  AuthRepo authRepo;

  SignUpUseCase(this.authRepo);

  Future<Either<AuthModel,RouteFailures>> call({required SignUpRequestModel request}) =>
      authRepo.signUp(request: request);
}
