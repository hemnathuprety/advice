import 'package:advice/core/dio/dio_helper.dart';
import 'package:advice/core/utils/shared_pref_manager.dart';
import 'package:advice/sections/auth/models/login_error_model.dart';
import 'package:advice/sections/auth/models/login_request_entity.dart';
import 'package:advice/sections/auth/models/profile_model.dart';
import 'package:injectable/injectable.dart';

@injectable
class AuthRepo {
  final DioHelper dio;

  AuthRepo({required this.dio});

  Future<dynamic> getLoginDetails(LoginRequestEntity entity) async {
    try {
      var response = await dio.dio.post('/api/token/', data: entity);

      if (response.statusCode == 200) {
        return ProfileModel.fromJson(response.data);
      } else {
        return LoginErrorModel.fromJson(response.data);
      }
    } catch (e) {
      return null;
    }
  }
}
