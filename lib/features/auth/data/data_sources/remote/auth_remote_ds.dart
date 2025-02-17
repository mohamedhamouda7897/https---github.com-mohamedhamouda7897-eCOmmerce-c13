import 'package:ecommerce_c13_friday/features/auth/data/models/auth_model.dart';
import 'package:ecommerce_c13_friday/features/auth/data/models/signup_requestModel.dart';

abstract class AuthRemoteDS {
  Future<AuthModel> signUp(SignUpRequestModel request);
}
