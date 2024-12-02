import 'package:dio/dio.dart';
import 'package:advice/core/dio/dio_client.dart';
import 'package:injectable/injectable.dart';

abstract class AlertDataSource {}

@LazySingleton(as: AlertDataSource)
class AlertDataSourceImpl implements AlertDataSource {
  final Dio dio = DioClient().instance;
}
