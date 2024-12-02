import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:advice/core/base_error_response_model.dart';
import 'package:advice/core/constants/api_constants.dart';
import 'package:advice/core/dio/dio_client.dart';
import 'package:advice/core/error/error_helper.dart';
import 'package:advice/core/error/exceptions.dart';
import 'package:advice/core/utils/shared_pref_manager.dart';
import 'package:advice/sections/auth/data/models/login_model.dart';
import 'package:injectable/injectable.dart';

abstract class LoginDataSource {
  Future<SignInModel> getLoginResponse({
    required String email,
    required String password,
  });
}

@LazySingleton(as: LoginDataSource)
class LoginDataSourceImpl implements LoginDataSource {
  final Dio dio = DioClient().instance;

  LoginDataSourceImpl();

  @override
  Future<SignInModel> getLoginResponse({
    required String email,
    required String password,
  }) async {
    final String url = ApiConstants().login;
    log('login url: $url');
    try {
      var data = json.encode({"email": email, "password": password});

      final Response response = await dio.post(url, data: data);

      log('response from login: ${response.data}');

      final SignInModel loginResponse =
          SignInModel.fromMap(response.data as Map<String, dynamic>);

      if (loginResponse.data == null) {
        final BaseErrorResponseModel errorResponse =
            BaseErrorResponseModel.fromJson(response.data as Map<String, dynamic>);
        throw ServerException(
          errorMessage: errorResponse.message,
        );
      }

      SharedPrefManager.instance.setAccessToken(
        loginResponse.data?.token ?? "",
      );

      return loginResponse;
    } on DioException catch (err) {
      log("message ${err.message}");
      final errorMessage = ErrorHelper.parseError(err);

      throw ServerException(
        errorMessage: errorMessage,
      );
    }
  }
}
