import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

@lazySingleton
class ApiManager {
  late Dio dio;

  ApiManager() {
    dio = Dio(BaseOptions(baseUrl: "https://ecommerce.routemisr.com"));
    initInterceptors();
  }

  initInterceptors() {
    dio.interceptors.add(PrettyDioLogger(
        requestBody: true,
        responseBody: true,
        requestHeader: true,
        request: true));

    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          return handler.next(options);
        },
        onResponse: (response, handler) {
          return handler.next(response);
        },
        onError: (error, handler) {
          return handler.next(error);
        },
      ),
    );
  }

  Future<Response> postRequest({
    required String endPoint,
    Map<String, dynamic>? body,
    Map<String, dynamic>? headers,
  }) {
    try {
      return dio.post(endPoint, data: body, options: Options(headers: headers));
    } on DioException catch (e) {
      throw Exception('Failed to post data: ${e.message}');
    }
  }

  Future<Response> getRequest({
    required String endPoint,
    Map<String, dynamic>? params,
    Map<String, dynamic>? headers,
  }) {
    try {
      return dio.get(endPoint,
          queryParameters: params, options: Options(headers: headers));
    } on DioException catch (e) {
      throw Exception('Failed to get data: ${e.message}');
    }
  }
}
