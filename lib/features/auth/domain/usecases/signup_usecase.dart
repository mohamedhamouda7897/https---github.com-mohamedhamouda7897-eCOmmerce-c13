import 'package:dartz/dartz.dart';
import 'package:ecommerce_c13_friday/core/failures/route_failures.dart';
import 'package:ecommerce_c13_friday/features/auth/data/models/auth_model.dart';
import 'package:ecommerce_c13_friday/features/auth/data/models/signup_requestModel.dart';
import 'package:ecommerce_c13_friday/features/auth/domain/repository/auth_repo.dart';
import 'package:injectable/injectable.dart';

@injectable
class SignUpUseCase {
  AuthRepo authRepo;

  SignUpUseCase(this.authRepo);

  Future<Either<RouteFailures, AuthModel>> call(
      {required SignUpRequestModel request}) {
    return authRepo.signUp(request);
  }
}
