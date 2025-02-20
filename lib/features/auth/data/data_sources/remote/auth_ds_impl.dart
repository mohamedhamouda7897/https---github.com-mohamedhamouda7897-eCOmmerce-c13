import 'package:ecommerce_c13_friday/core/api/api_manager.dart';
import 'package:ecommerce_c13_friday/core/api/end_points.dart';
import 'package:ecommerce_c13_friday/features/auth/data/data_sources/remote/auth_ds.dart';
import 'package:ecommerce_c13_friday/features/auth/data/models/auth_model.dart';
import 'package:ecommerce_c13_friday/features/auth/data/models/singup_request_model.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AuthDS)
class AuthDSImpl implements AuthDS {
  ApiManager apiManager;

  AuthDSImpl(this.apiManager);

  @override
  Future<AuthModel> signUp(SignUpRequestModel model) async {
    var response = await apiManager.postData(
        endPoint: EndPoints.signUp, body: model.toJson());

    AuthModel authModel = AuthModel.fromJson(response.data);
    return authModel;
  }

  @override
  Future<AuthModel> login(String email, String password) async {
    var response = await apiManager.postData(
        endPoint: EndPoints.login,
        body: {"email": email, "password": password});

    AuthModel authModel = AuthModel.fromJson(response.data);
    return authModel;
  }
}
