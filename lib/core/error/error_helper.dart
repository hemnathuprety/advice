import 'dart:developer';

import 'package:dio/dio.dart';

class ErrorHelper {
  static String parseError(dynamic error) {
    var errorMessage = 'Something went wrong';
    if (error is DioException) {
      // ignore: unrelated_type_equality_checks
      if (error.type == DioExceptionType.connectionTimeout ||
          error.type == DioExceptionType.sendTimeout ||
          error.type == DioExceptionType.receiveTimeout) {
        errorMessage = 'Please check your Internet connection';
      } else {
        final errorResponse = error.response;
        try {
          if (errorResponse != null) {
            final jsonError = errorResponse.data as Map<String, dynamic>;
            errorMessage = jsonError["message"] as String;
            log('error message inside error helper: $errorMessage');
          }
        } catch (e, _) {
          log('error parsing failed: $e');
        }
      }
    } else if (error is CustomError) {
      errorMessage = error.message;
    }
    return errorMessage;
  }
}

class CustomError {
  final String message;
  const CustomError({
    required this.message,
  });
}
