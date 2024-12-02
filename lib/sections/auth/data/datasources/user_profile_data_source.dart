import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:advice/core/base_error_response_model.dart';
import 'package:advice/core/base_response_model.dart';
import 'package:advice/core/constants/api_constants.dart';
import 'package:advice/core/dio/dio_client.dart';
import 'package:advice/core/error/error_helper.dart';
import 'package:advice/core/error/exceptions.dart';
import 'package:advice/core/utils/shared_pref_manager.dart';
import 'package:advice/sections/auth/data/models/profile_model.dart';
import 'package:injectable/injectable.dart';

abstract class UserProfileDataSource {
  Future<ProfileModel?> getUserProfileResponse();

  Future<bool?> logoutResponse();
}

@LazySingleton(as: UserProfileDataSource)
class UserProfileDataSourceImpl implements UserProfileDataSource {
  final Dio dio = DioClient().instance;

  UserProfileDataSourceImpl();

  @override
  Future<ProfileModel?> getUserProfileResponse() async {
    final String url = ApiConstants().getProfile;
    try {
      String accessToken = await SharedPrefManager.instance.getAccessToken();

      dio.options.headers["Authorization"] = "Bearer $accessToken";
      dio.options.preserveHeaderCase = true;

      Response response = await dio.get(url);

      log("message ${response.data}");

      final BaseResponseModel profileResponse =
          BaseResponseModel.fromJson(response.data as Map<String, dynamic>);

      if (profileResponse.data == null) {
        final BaseErrorResponseModel errorResponse =
            BaseErrorResponseModel.fromJson(
                response.data as Map<String, dynamic>);
        throw ServerException(errorMessage: errorResponse.message);
      }

      return ProfileModel.fromJson(profileResponse.data);
    } on DioException catch (err) {
      log("message ${err.message}");

      final errorMessage = ErrorHelper.parseError(err);

      throw ServerException(
        errorMessage: errorMessage,
      );
    }
  }

  @override
  Future<bool?> logoutResponse() async {
    await SharedPrefManager.instance.setAccessToken("");
    return true;
  }
}
