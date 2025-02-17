import 'package:ecommerce_c13_friday/features/auth/data/models/auth_model.dart';
import 'package:ecommerce_c13_friday/features/auth/data/models/signup_requestModel.dart';
import 'package:ecommerce_c13_friday/features/auth/domain/repository/auth_repo.dart';

class SignUpUseCase {
  AuthRepo authRepo;

  SignUpUseCase(this.authRepo);

  Future<AuthModel> call({required SignUpRequestModel request}) {
    return authRepo.signUp(request);
  }
}
