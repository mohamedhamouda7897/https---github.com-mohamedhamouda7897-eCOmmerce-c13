import 'package:dartz/dartz.dart';
import 'package:ecommerce_c13_friday/core/failuers/failuers.dart';
import 'package:ecommerce_c13_friday/features/auth/data/models/auth_model.dart';
import 'package:ecommerce_c13_friday/features/auth/domain/repository/auth_repo.dart';
import 'package:injectable/injectable.dart';

@injectable
class LoginUseCase {
  AuthRepo repo;

  LoginUseCase(this.repo);

  Future<Either<RouteFailures, AuthModel>> call(
          String email, String password) =>
      repo.login(email: email, password: password);
}
