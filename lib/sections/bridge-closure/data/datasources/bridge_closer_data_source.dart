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
import 'package:advice/sections/bridge-closure/data/models/bridge_closer_history_data_model.dart';
import 'package:advice/sections/bridge-closure/data/models/bridge_closer_history_model.dart';
import 'package:advice/sections/dashboard/data/models/aggregate_model.dart';
import 'package:advice/sections/dashboard/data/models/month_wise_stats_model.dart';
import 'package:injectable/injectable.dart';

abstract class BridgeCloserDataSource {
  Future<BridgeCloserHistoryDataModel?> getBridgeClosureHistoryPaginated(
      int params);

  Future<BridgeCloserHistoryDataModel?> getBridgeClosureHistory(
      String month, String year);

  Future<MonthWiseStatsModel?> getBridgeClosureMonthwiseStats(String params);

  Future<MonthWiseStatsModel?> getMonthWiseAvgRepairTime(String params);

  Future<AggregateStatsModel?> getBridgeClosureAggregateStats(String params);

  Future<MonthWiseStatsModel?> getDistrictWiseStats(String params);

  Future<MonthWiseStatsModel?> getRoadWiseStats(String params);

}

@LazySingleton(as: BridgeCloserDataSource)
class BridgeCloserDataSourceImpl implements BridgeCloserDataSource {
  final Dio dio = DioClient().instance;

  @override
  Future<BridgeCloserHistoryDataModel?> getBridgeClosureHistoryPaginated(
      int params) async {
    final String url = ApiConstants().getBridgeHistoryPaginated;
    try {
      String accessToken = await SharedPrefManager.instance.getAccessToken();

      dio.options.headers["Authorization"] = "Bearer $accessToken";
      dio.options.preserveHeaderCase = true;

      var data = json.encode({"page": params});

      Response response = await dio.post(url, data: data);

      final BaseResponseModel baseResponse =
          BaseResponseModel.fromJson(response.data as Map<String, dynamic>);

      if (baseResponse.data == null) {
        final BaseErrorResponseModel errorResponse =
            BaseErrorResponseModel.fromJson(
                response.data as Map<String, dynamic>);
        throw ServerException(errorMessage: errorResponse.message);
      }

      return BridgeCloserHistoryDataModel.fromJson(baseResponse.data);
    } on DioException catch (err) {
      log("message ${err.message}");

      final errorMessage = ErrorHelper.parseError(err);

      throw ServerException(
        errorMessage: errorMessage,
      );
    }
  }

  @override
  Future<BridgeCloserHistoryDataModel?> getBridgeClosureHistory(
      String month, String year) async {
    final String url = ApiConstants().getBridgeHistory;
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

      var closerHistoryModelList = <BridgeCloserHistoryModel>[];

      if (baseResponse.data != null) {
        baseResponse.data.forEach((v) {
          closerHistoryModelList.add(BridgeCloserHistoryModel.fromJson(v));
        });
      }

      return BridgeCloserHistoryDataModel(
        data: closerHistoryModelList,
        totalRows: 0,
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
  Future<MonthWiseStatsModel?> getBridgeClosureMonthwiseStats(
      String params) async {
    final String url = ApiConstants().getBridgeClosureMonthwiseStats;
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
    final String url = ApiConstants().getBridgeClosureMonthwiseAvgRepairTime;
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
  Future<AggregateStatsModel?> getBridgeClosureAggregateStats(
      String params) async {
    final String url = ApiConstants().getBridgeClosureAggregateStats;
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

  @override
  Future<MonthWiseStatsModel?> getDistrictWiseStats(String params) async {
    final String url = ApiConstants().getBridgeClosureDistrictwiseStats;
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
    final String url = ApiConstants().getBridgewiseStats;
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

}
