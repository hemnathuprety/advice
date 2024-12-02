import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:advice/core/base_error_response_model.dart';
import 'package:advice/core/base_response_model.dart';
import 'package:advice/core/constants/api_constants.dart';
import 'package:advice/core/dio/dio_client.dart';
import 'package:advice/core/error/error_helper.dart';
import 'package:advice/core/error/exceptions.dart';
import 'package:advice/core/use_cases/usecase.dart';
import 'package:advice/core/utils/shared_pref_manager.dart';
import 'package:advice/sections/advisory/data/models/add_advisory_image_model.dart';
import 'package:advice/sections/advisory/data/models/add_advisory_model.dart';
import 'package:advice/sections/advisory/data/models/add_bridge_closer_advisory_model.dart';
import 'package:advice/sections/advisory/data/models/districts_model.dart';
import 'package:advice/sections/advisory/data/models/divisions_model.dart';
import 'package:advice/sections/advisory/data/models/roads_from_division_model.dart';
import 'package:injectable/injectable.dart';

abstract class AdvisoryDataSource {
  Future<DivisionsModel?> getDivisions(NoParams params);

  Future<DistrictsModel?> getAllDistricts(NoParams params);

  Future<RoadsFromDivisionModel?> getRoadsFromDivision(String divName);

  Future<BaseResponseModel?> postAdvisory(dynamic addAdvisoryModel);

  Future<BaseResponseModel?> postAdvisoryImages(
      AddAdvisoryImageModel addAdvisoryModel);
}

@LazySingleton(as: AdvisoryDataSource)
class AdvisoryDataSourceImpl implements AdvisoryDataSource {
  final Dio dio = DioClient().instance;

  @override
  Future<DistrictsModel?> getAllDistricts(NoParams params) async {
    final String url = ApiConstants().getAllDistricts;
    try {
      String accessToken = await SharedPrefManager.instance.getAccessToken();

      dio.options.headers["Authorization"] = "Bearer $accessToken";
      dio.options.preserveHeaderCase = true;

      Response response = await dio.get(url);

      final DistrictsModel baseResponse =
          DistrictsModel.fromJson(response.data as Map<String, dynamic>);

      if (baseResponse.districtsEntity == null) {
        final BaseErrorResponseModel errorResponse =
            BaseErrorResponseModel.fromJson(
                response.data as Map<String, dynamic>);
        throw ServerException(errorMessage: errorResponse.message);
      }
      log("message errorResponse");
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
  Future<RoadsFromDivisionModel?> getRoadsFromDivision(String divName) async {
    final String url = ApiConstants().getRoadsFromDivision;
    try {
      String accessToken = await SharedPrefManager.instance.getAccessToken();

      dio.options.headers["Authorization"] = "Bearer $accessToken";
      dio.options.preserveHeaderCase = true;

      var data = json.encode({"div_name": divName});

      Response response = await dio.post(url, data: data);

      final RoadsFromDivisionModel baseResponse =
          RoadsFromDivisionModel.fromJson(
              response.data as Map<String, dynamic>);

      if (baseResponse.data == null) {
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
  Future<DivisionsModel?> getDivisions(NoParams params) async {
    final String url = ApiConstants().getDivisions;
    try {
      String accessToken = await SharedPrefManager.instance.getAccessToken();

      dio.options.headers["Authorization"] = "Bearer $accessToken";
      dio.options.preserveHeaderCase = true;

      Response response = await dio.get(url);

      final DivisionsModel baseResponse =
          DivisionsModel.fromJson(response.data as Map<String, dynamic>);

      if (baseResponse.divisions == null) {
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
  Future<BaseResponseModel?> postAdvisory(dynamic addAdvisoryModel) async {
    try {
      String accessToken = await SharedPrefManager.instance.getAccessToken();

      dio.options.headers["Authorization"] = "Bearer $accessToken";
      dio.options.preserveHeaderCase = true;

      if (addAdvisoryModel is AddAdvisoryModel) {
        log("data ${addAdvisoryModel.toJson()}");
        final String url = ApiConstants().postAdvisory;
        Response response =
            await dio.post(url, data: addAdvisoryModel.toJson());

        final BaseResponseModel baseResponse =
            BaseResponseModel.fromJson(response.data as Map<String, dynamic>);

        if (baseResponse.id == null) {
          final BaseErrorResponseModel errorResponse =
              BaseErrorResponseModel.fromJson(
                  response.data as Map<String, dynamic>);
          throw ServerException(errorMessage: errorResponse.message);
        }

        return baseResponse;
      } else if (addAdvisoryModel is AddBridgeCloserAdvisoryModel) {
        log("data ${addAdvisoryModel.toJson()}");
        final String url = ApiConstants().postBridgeCloserAdvisory;
        Response response =
            await dio.post(url, data: addAdvisoryModel.toJson());

        final BaseResponseModel baseResponse =
            BaseResponseModel.fromJson(response.data as Map<String, dynamic>);

        if (baseResponse.id == null) {
          final BaseErrorResponseModel errorResponse =
              BaseErrorResponseModel.fromJson(
                  response.data as Map<String, dynamic>);
          throw ServerException(errorMessage: errorResponse.message);
        }

        return baseResponse;
      }
      return null;
    } on DioException catch (err) {
      log("message ${err.message}");

      final errorMessage = ErrorHelper.parseError(err);

      throw ServerException(
        errorMessage: errorMessage,
      );
    }
  }

  @override
  Future<BaseResponseModel?> postAdvisoryImages(
      AddAdvisoryImageModel addAdvisoryModel) async {
    final String url = ApiConstants().saveImages;
    try {
      String accessToken = await SharedPrefManager.instance.getAccessToken();

      dio.options.headers["Authorization"] = "Bearer $accessToken";
      dio.options.preserveHeaderCase = true;

      log("data ${addAdvisoryModel.roadClosureId}");

      // Prepare FormData with multiple files
      FormData formData = FormData();

      // Add road_closure_id as a field
      formData.fields.add(
          MapEntry('road_closure_id', addAdvisoryModel.roadClosureId ?? ""));

      var imageFiles = addAdvisoryModel.files;
      for (var i = 0; i < (imageFiles?.length ?? 0); i++) {
        log("path ${imageFiles![i]!.path}");
        formData.files.add(MapEntry(
          'images[]',
          await MultipartFile.fromFile(imageFiles[i]!.path,
              filename: 'image_$i.jpg'),
        ));
      }

      Response response = await dio.post(
        url,
        data: formData,
        options: Options(headers: {
          'Content-Type': 'multipart/form-data',
        }),
      );

      final BaseResponseModel baseResponse =
          BaseResponseModel.fromJson(response.data as Map<String, dynamic>);

      if (baseResponse.message == null) {
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
}
