import 'package:dio/dio.dart';
import 'package:ecommerce_c13_friday/features/auth/data/data_sources/remote/auth_remote_ds.dart';
import 'package:ecommerce_c13_friday/features/auth/data/models/auth_model.dart';
import 'package:ecommerce_c13_friday/features/auth/data/models/signup_requestModel.dart';

class AuthRemoteDSImpl implements AuthRemoteDS {
  @override
  Future<AuthModel> signUp(SignUpRequestModel request) async{
    Dio dio = Dio();

   var response=await dio.post("https://ecommerce.routemisr.com/api/v1/auth/signup",
        data: request.toJson());

   AuthModel authModel=AuthModel.fromJson(response.data);
   return authModel;
  }
}
