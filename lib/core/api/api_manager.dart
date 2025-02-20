import 'package:dio/dio.dart';
import 'package:ecommerce_c13_friday/core/resources/constants_manager.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

@lazySingleton
class ApiManager {
  late Dio dio;

  ApiManager() {
    dio = Dio(BaseOptions(
      baseUrl: AppConstants.baseUrl,
    ));
    initializeInterceptors();
  }

  void initializeInterceptors() {
    dio.interceptors.add(PrettyDioLogger(
      request: true,
      requestBody: true,
      responseBody: true,
      requestHeader: true,
    ));

    dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) {
        //dc3d106e730c4256b8c275d9da58d090

        // dio.options.headers['X-Api-Key'] = 'dc3d106e730c4256b8c275d9da58d090';
        options.headers['Content-Type'] = 'application/json';
        return handler.next(options); //continue
      },
      onResponse: (response, handler) {
        // Handle responses
        return handler.next(response); // continue
      },
      onError: (DioError error, handler) {
        // Handle errors
        print(error.message);
        return handler.next(error); //continue
      },
    ));
  }

  Future<Response> getData({
    required String endPoint,
    Map<String, dynamic>? query,
  }) async {
    try {
      return await dio.get(endPoint, queryParameters: query);
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<Response> postData({
    required String endPoint,
    Map<String, dynamic>? body,
  }) async {
    try {
      return await dio.post(endPoint, data: body);
    } catch (e) {
      return Future.error(e.toString());
    }
  }
}
