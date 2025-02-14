import 'package:dio/dio.dart';
import 'package:ecommerce_c13_friday/core/resources/constants_manager.dart';

class APIManager {
  late Dio _dio;

  APIManager() {
    _dio = Dio(BaseOptions(
      baseUrl: AppConstants.baseUrl,
      headers: {
        'Content-Type': 'application/json',
      },
    ));

    // Optionally add an interceptor for additional functionality
    _dio.interceptors.add(LogInterceptor(responseBody: true));
  }

  Future<Response> getRequest(String endpoint) async {
    try {
      return await _dio.get(endpoint);
    } on DioError catch (e) {
      // Handle DioError here by throwing or logging
      throw Exception('Failed to GET: $e');
    }
  }

  Future<Response> postRequest(String endpoint, dynamic data) async {
    try {
      return await _dio.post(endpoint, data: data);
    } on DioError catch (e) {
      // Handle DioError here by throwing or logging
      throw Exception('Failed to POST: $e');
    }
  }

  Future<Response> deleteRequest(String endpoint) async {
    try {
      return await _dio.delete(endpoint);
    } on DioError catch (e) {
      // Handle DioError here by throwing or logging
      throw Exception('Failed to DELETE: $e');
    }
  }
}
