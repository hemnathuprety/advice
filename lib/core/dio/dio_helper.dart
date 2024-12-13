import 'dart:developer';

import 'package:advice/core/constants/api_constants.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

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

    dio.interceptors.add(
      PrettyDioLogger(
        requestBody: true,
        responseBody: false,
        requestHeader: true,
      ),
    );

    // Add interceptors if needed
    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          // Perform actions before request is sent, like adding tokens
          log("onRequest $handler");
          return handler.next(options); // Continue with the request
        },
        onResponse: (response, handler) {
          // Handle responses globally
          log("onResponse $response");
          return handler.next(response); // Continue with the response
        },
        onError: (DioException e, handler) {
          // Handle errors globally
          log("onError ${e.message}");
          return handler.next(e); // Continue with the error
        },
      ),
    );
  }
}
