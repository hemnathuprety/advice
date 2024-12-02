import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:advice/core/base_error_response_model.dart';
import 'package:advice/core/constants/api_constants.dart';
import 'package:advice/core/dio/dio_client.dart';
import 'package:advice/core/error/error_helper.dart';
import 'package:advice/core/error/exceptions.dart';
import 'package:advice/core/use_cases/usecase.dart';
import 'package:advice/core/utils/shared_pref_manager.dart';
import 'package:advice/sections/advisory/data/models/advisory_alert_model.dart';
import 'package:injectable/injectable.dart';

abstract class DashboardDataSource {
  Future<AdvisoryAlertModel?> getAlertsByTypes(String params, String type);

  Future<Map<String, dynamic>?> getMadheshProvinceSData(NoParams params);

  Future<Map<String, dynamic>?> getBagmatiProvinceData(NoParams params);
}

@LazySingleton(as: DashboardDataSource)
class DashboardDataSourceImpl implements DashboardDataSource {
  final Dio dio = DioClient().instance;

  @override
  Future<AdvisoryAlertModel?> getAlertsByTypes(
      String params, String type) async {
    final String url = ApiConstants().getAdvisoryHistory;
    try {
      String accessToken = await SharedPrefManager.instance.getAccessToken();

      dio.options.headers["Authorization"] = "Bearer $accessToken";
      dio.options.preserveHeaderCase = true;

      var data = json.encode({"page": params, "type": type});

      Response response = await dio.post(url, data: data);

      final AdvisoryAlertModel baseResponse =
          AdvisoryAlertModel.fromJson(response.data as Map<String, dynamic>);

      if (baseResponse.results == null) {
        final BaseErrorResponseModel errorResponse =
            BaseErrorResponseModel.fromJson(
                response.data as Map<String, dynamic>);
        throw ServerException(errorMessage: errorResponse.message);
      }

      return baseResponse;
    } on DioException catch (err) {
      log("message ${err.message}");

      final errorMessage = ErrorHelper.parseError(err);

      throw ServerException(
        errorMessage: errorMessage,
      );
    }
  }

  @override
  Future<Map<String, dynamic>?> getMadheshProvinceSData(NoParams params) async {
    final String url = ApiConstants().bagmatiProvinceDistrict;
    try {
      var dio = Dio();

      Response response = await dio.get(url);

      return response.data;
    } on DioException catch (err) {
      log("error getFFGSData ${err.message}");

      final errorMessage = ErrorHelper.parseError(err);

      throw ServerException(
        errorMessage: errorMessage,
      );
    }
  }

  @override
  Future<Map<String, dynamic>?> getBagmatiProvinceData(NoParams params) async {
    final String url = ApiConstants().madeshProvinceDistrict;
    try {
      var dio = Dio();

      Response response = await dio.get(url);

      return response.data;
    } on DioException catch (err) {
      log("error getFFGSData ${err.message}");

      final errorMessage = ErrorHelper.parseError(err);

      throw ServerException(
        errorMessage: errorMessage,
      );
    }
  }
}
