import 'package:dio/dio.dart';
import 'package:ecommerce_c13_friday/core/api/api_manager.dart';
import 'package:ecommerce_c13_friday/core/api/endPoints.dart';
import 'package:ecommerce_c13_friday/features/auth/data/data_sources/remote/auth_remote_ds.dart';
import 'package:ecommerce_c13_friday/features/auth/data/models/auth_model.dart';
import 'package:ecommerce_c13_friday/features/auth/data/models/signup_requestModel.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AuthRemoteDS)
class AuthRemoteDSImpl implements AuthRemoteDS {
  ApiManager apiManager;

  AuthRemoteDSImpl(this.apiManager);

  @override
  Future<AuthModel> signUp(SignUpRequestModel request) async {
    var response = await apiManager.postRequest(
        endPoint: EndPoints.signUp, body: request.toJson());

    AuthModel authModel = AuthModel.fromJson(response.data);
    return authModel;
  }

  @override
  Future<AuthModel> login(String email, String password) async {
    var response = await apiManager.postRequest(
        endPoint: EndPoints.signIn,
        body: {"email": email, "password": password});

    AuthModel authModel = AuthModel.fromJson(response.data);
    return authModel;
  }
}
