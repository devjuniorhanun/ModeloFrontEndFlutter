import 'package:dio/dio.dart';

Dio dioInterceptors() {
  // Set default configs
  var options = BaseOptions(
    baseUrl: 'http://localhost:8000/api/',
    connectTimeout: 5000,
    receiveTimeout: 3000,
  );
  Dio _dio = Dio(options);
  return _dio;
}
