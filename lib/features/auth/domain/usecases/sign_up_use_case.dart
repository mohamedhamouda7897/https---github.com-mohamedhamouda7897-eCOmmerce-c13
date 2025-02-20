import 'package:dartz/dartz.dart';
import 'package:ecommerce_c13_friday/core/failures/failures.dart';
import 'package:ecommerce_c13_friday/features/auth/data/models/auth_model.dart';
import 'package:ecommerce_c13_friday/features/auth/data/models/singup_request_model.dart';
import 'package:ecommerce_c13_friday/features/auth/domain/repository/auth_repo.dart';
import 'package:injectable/injectable.dart';

@injectable
class SignUpUseCase {
  AuthRepo authRepo;

  SignUpUseCase(this.authRepo);

  Future<Either<RouteFailures, AuthModel>> call(
          {required SignUpRequestModel request}) =>
      authRepo.signUp(request);
}
