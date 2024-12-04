import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../constants/api_constants.dart';

@lazySingleton
class DioHelper {
  final Dio dio;

  DioHelper() : dio = Dio() {
    // Configure Dio here
    dio.options = BaseOptions(
      connectTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30),
      baseUrl: ApiConstants.baseUrl,
      headers: {
        "Content-Type": "application/json",
      },
    );

    // Add interceptors if needed
    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          // Perform actions before request is sent, like adding tokens
          return handler.next(options); // Continue with the request
        },
        onResponse: (response, handler) {
          // Handle responses globally
          return handler.next(response); // Continue with the response
        },
        onError: (DioException e, handler) {
          // Handle errors globally
          return handler.next(e); // Continue with the error
        },
      ),
    );
  }
}
