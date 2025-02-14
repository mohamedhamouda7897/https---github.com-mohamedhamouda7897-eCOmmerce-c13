import 'package:ecommerce_c13_friday/core/api/api_manager.dart';
import 'package:ecommerce_c13_friday/core/resources/endpoints.dart';
import 'package:ecommerce_c13_friday/features/auth/data/data_sources/remote/auth_remote_ds.dart';
import 'package:ecommerce_c13_friday/features/auth/data/models/auth_model.dart';
import 'package:ecommerce_c13_friday/features/auth/data/models/signup_request_model.dart';
import 'package:dio/dio.dart';

class AuthRemoteDSImpl implements AuthRemoteDS {
  APIManager apiManager;

  AuthRemoteDSImpl(this.apiManager);

  @override
  Future<AuthModel> signUp({SignUpRequestModel? request}) async {
    var result =
        await apiManager.postRequest(EndPoints.signUp, request!.toJson());

    AuthModel authModel = AuthModel.fromJson(result.data);
    return authModel;
  }
}
