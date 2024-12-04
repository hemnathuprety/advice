import 'package:advice/core/constants/api_constants.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

@injectable
class DioClient {
  static DioClient? _instance;
  Dio? _dio;

  factory DioClient() {
    _instance ??= DioClient._();
    return _instance!;
  }

  var headers = {
    'Content-Type': 'application/json',
    'Accept': 'application/json',
  };

  DioClient._() {
    _dio = Dio(
      BaseOptions(
        baseUrl: ApiConstants.baseUrl,
        headers: headers,
        /*connectTimeout: const Duration(seconds: 15),
        receiveTimeout: const Duration(seconds: 30),*/
      ),
    )..interceptors.addAll([
        PrettyDioLogger(
          requestBody: true,
          responseBody: true,
          requestHeader: true,
        ),
      ]);
  }

  Dio get instance => _dio!;
}
