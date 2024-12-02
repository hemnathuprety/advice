import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:advice/core/base_error_response_model.dart';
import 'package:advice/core/base_response_model.dart';
import 'package:advice/core/constants/api_constants.dart';
import 'package:advice/core/dio/dio_client.dart';
import 'package:advice/core/error/error_helper.dart';
import 'package:advice/core/error/exceptions.dart';
import 'package:advice/core/utils/shared_pref_manager.dart';
import 'package:advice/sections/dashboard/data/models/aggregate_model.dart';
import 'package:advice/sections/dashboard/data/models/month_wise_stats_model.dart';
import 'package:advice/sections/road-closure/data/models/road_closer_history_data_model.dart';
import 'package:advice/sections/road-closure/data/models/road_closer_history_model.dart';
import 'package:injectable/injectable.dart';

abstract class RoadCloserDataSource {
  Future<MonthWiseStatsModel?> getDistrictWiseStats(String params);

  Future<MonthWiseStatsModel?> getRoadWiseStats(String params);

  Future<MonthWiseStatsModel?> getMonthWiseStats(String params);

  Future<MonthWiseStatsModel?> getMonthWiseAvgRepairTime(String params);

  Future<AggregateStatsModel?> getAggregateStats(String params);

  Future<RoadCloserHistoryDataModel?> getRoadClosureHistoryPaginated(
      int params);

  Future<RoadCloserHistoryDataModel?> getRoadClosureHistory(
      String month, String year);
}

@LazySingleton(as: RoadCloserDataSource)
class RoadCloserDataSourceImpl implements RoadCloserDataSource {
  final Dio dio = DioClient().instance;

  @override
  Future<MonthWiseStatsModel?> getDistrictWiseStats(String params) async {
    final String url = ApiConstants().getDistrictWiseStats;
    try {
      String accessToken = await SharedPrefManager.instance.getAccessToken();

      dio.options.headers["Authorization"] = "Bearer $accessToken";
      dio.options.preserveHeaderCase = true;

      var data = json.encode({"year": params});

      Response response = await dio.post(url, data: data);

      final BaseResponseModel baseResponse =
          BaseResponseModel.fromJson(response.data as Map<String, dynamic>);

      if (baseResponse.data == null) {
        final BaseErrorResponseModel errorResponse =
            BaseErrorResponseModel.fromJson(
                response.data as Map<String, dynamic>);
        throw ServerException(errorMessage: errorResponse.message);
      }

      return MonthWiseStatsModel.fromJson(baseResponse.data);
    } on DioException catch (err) {
      log("message ${err.message}");

      final errorMessage = ErrorHelper.parseError(err);

      throw ServerException(
        errorMessage: errorMessage,
      );
    }
  }

  @override
  Future<MonthWiseStatsModel?> getRoadWiseStats(String params) async {
    final String url = ApiConstants().getRoadWiseStats;
    try {
      String accessToken = await SharedPrefManager.instance.getAccessToken();

      dio.options.headers["Authorization"] = "Bearer $accessToken";
      dio.options.preserveHeaderCase = true;

      var data = json.encode({"year": params});

      Response response = await dio.post(url, data: data);

      final BaseResponseModel baseResponse =
          BaseResponseModel.fromJson(response.data as Map<String, dynamic>);

      if (baseResponse.data == null) {
        final BaseErrorResponseModel errorResponse =
            BaseErrorResponseModel.fromJson(
                response.data as Map<String, dynamic>);
        throw ServerException(errorMessage: errorResponse.message);
      }

      return MonthWiseStatsModel.fromJson(baseResponse.data);
    } on DioException catch (err) {
      log("message ${err.message}");

      final errorMessage = ErrorHelper.parseError(err);

      throw ServerException(
        errorMessage: errorMessage,
      );
    }
  }

  @override
  Future<RoadCloserHistoryDataModel?> getRoadClosureHistoryPaginated(
    int params,
  ) async {
    final String url = ApiConstants().getHistoryPaginated;
    try {
      String accessToken = await SharedPrefManager.instance.getAccessToken();

      dio.options.headers["Authorization"] = "Bearer $accessToken";
      dio.options.preserveHeaderCase = true;

      var data = json.encode({"page": 1});

      Response response = await dio.post(url, data: data);

      final BaseResponseModel baseResponse =
          BaseResponseModel.fromJson(response.data as Map<String, dynamic>);

      if (baseResponse.data == null) {
        final BaseErrorResponseModel errorResponse =
            BaseErrorResponseModel.fromJson(
                response.data as Map<String, dynamic>);
        throw ServerException(errorMessage: errorResponse.message);
      }
      return RoadCloserHistoryDataModel.fromJson(baseResponse.data);
    } on DioException catch (err) {
      log("message ${err.message}");

      final errorMessage = ErrorHelper.parseError(err);

      throw ServerException(
        errorMessage: errorMessage,
      );
    }
  }

  @override
  Future<RoadCloserHistoryDataModel?> getRoadClosureHistory(
      String month, String year) async {
    final String url = ApiConstants().getHistory;
    try {
      String accessToken = await SharedPrefManager.instance.getAccessToken();

      dio.options.headers["Authorization"] = "Bearer $accessToken";
      dio.options.preserveHeaderCase = true;

      var data = json.encode({"month": month, "year": year});

      Response response = await dio.post(url, data: data);

      final BaseResponseModel baseResponse =
          BaseResponseModel.fromJson(response.data as Map<String, dynamic>);

      if (baseResponse.data == null) {
        final BaseErrorResponseModel errorResponse =
            BaseErrorResponseModel.fromJson(
                response.data as Map<String, dynamic>);
        throw ServerException(errorMessage: errorResponse.message);
      }

      var roadCloserHistoryModelList = <RoadCloserHistoryModel>[];

      if (baseResponse.data != null) {
        baseResponse.data.forEach((v) {
          roadCloserHistoryModelList.add(RoadCloserHistoryModel.fromJson(v));
        });
      }

      return RoadCloserHistoryDataModel(
        data: roadCloserHistoryModelList,
        totalRows: "0",
      );
    } on DioException catch (err) {
      log("message ${err.message}");

      final errorMessage = ErrorHelper.parseError(err);

      throw ServerException(
        errorMessage: errorMessage,
      );
    }
  }

  @override
  Future<MonthWiseStatsModel?> getMonthWiseStats(String params) async {
    final String url = ApiConstants().getMonthWiseStats;
    try {
      String accessToken = await SharedPrefManager.instance.getAccessToken();

      dio.options.headers["Authorization"] = "Bearer $accessToken";
      dio.options.preserveHeaderCase = true;

      var data = json.encode({"year": params});

      Response response = await dio.post(url, data: data);

      final BaseResponseModel profileResponse =
          BaseResponseModel.fromJson(response.data as Map<String, dynamic>);

      if (profileResponse.data == null) {
        final BaseErrorResponseModel errorResponse =
            BaseErrorResponseModel.fromJson(
                response.data as Map<String, dynamic>);
        throw ServerException(errorMessage: errorResponse.message);
      }

      return MonthWiseStatsModel.fromJson(profileResponse.data);
    } on DioException catch (err) {
      log("message ${err.message}");

      final errorMessage = ErrorHelper.parseError(err);

      throw ServerException(
        errorMessage: errorMessage,
      );
    }
  }

  @override
  Future<MonthWiseStatsModel?> getMonthWiseAvgRepairTime(String params) async {
    final String url = ApiConstants().getMonthWiseAvgRepairTime;
    try {
      String accessToken = await SharedPrefManager.instance.getAccessToken();

      dio.options.headers["Authorization"] = "Bearer $accessToken";
      dio.options.preserveHeaderCase = true;

      var data = json.encode({"year": params});

      Response response = await dio.post(url, data: data);

      final BaseResponseModel profileResponse =
          BaseResponseModel.fromJson(response.data as Map<String, dynamic>);

      if (profileResponse.data == null) {
        final BaseErrorResponseModel errorResponse =
            BaseErrorResponseModel.fromJson(
                response.data as Map<String, dynamic>);
        throw ServerException(errorMessage: errorResponse.message);
      }

      return MonthWiseStatsModel.fromJson(profileResponse.data);
    } on DioException catch (err) {
      log("message ${err.message}");

      final errorMessage = ErrorHelper.parseError(err);

      throw ServerException(
        errorMessage: errorMessage,
      );
    }
  }

  @override
  Future<AggregateStatsModel?> getAggregateStats(String params) async {
    final String url = ApiConstants().getAggregateStats;
    try {
      String accessToken = await SharedPrefManager.instance.getAccessToken();

      dio.options.headers["Authorization"] = "Bearer $accessToken";
      dio.options.preserveHeaderCase = true;

      var data = json.encode({"year": params});

      Response response = await dio.post(url, data: data);

      final BaseResponseModel profileResponse =
          BaseResponseModel.fromJson(response.data as Map<String, dynamic>);

      if (profileResponse.data == null) {
        final BaseErrorResponseModel errorResponse =
            BaseErrorResponseModel.fromJson(
                response.data as Map<String, dynamic>);
        throw ServerException(errorMessage: errorResponse.message);
      }

      return AggregateStatsModel.fromJson(profileResponse.data);
    } on DioException catch (err) {
      log("message ${err.message}");

      final errorMessage = ErrorHelper.parseError(err);

      throw ServerException(
        errorMessage: errorMessage,
      );
    }
  }
}
