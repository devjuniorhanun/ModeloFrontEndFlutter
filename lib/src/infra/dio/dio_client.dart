import 'package:dio/dio.dart';
import './interceptors.dart';

class DioClient {
  Dio? _dio;

  DioClient() {
    _dio = dioInterceptors();
  }

  Future<dynamic> get(String url,
      {Map<String, dynamic>? queryParameters}) async {
    try {
      final Response response =
          await _dio!.get(url, queryParameters: queryParameters);
      return response;
    } on DioError catch (e) {
      if (e.response != null) {
        print(e.response);
      }
    }
  }

  Future<dynamic> post(String url,
      {formData, Map<String, dynamic>? queryParameters}) async {
    try {
      final Response response = await _dio!
          .post(url, data: formData, queryParameters: queryParameters);
      return response;
    } on DioError catch (e) {
      if (e.response != null) {
        print(e.response);
      }
    }
  }
}
