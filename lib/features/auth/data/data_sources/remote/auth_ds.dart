import 'package:ecommerce_c13_friday/features/auth/data/models/auth_model.dart';
import 'package:ecommerce_c13_friday/features/auth/data/models/singup_request_model.dart';

abstract class AuthDS {
  Future<AuthModel> signUp(SignUpRequestModel model);

  Future<AuthModel> login(String email, String password);
}
