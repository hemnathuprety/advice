import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:advice/core/error/exceptions.dart';
import 'package:advice/core/error/failures.dart';
import 'package:advice/sections/auth/data/datasources/user_profile_data_source.dart';
import 'package:advice/sections/auth/data/models/profile_model.dart';
import 'package:advice/sections/auth/domain/repositories/user_profile_repo.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: UserProfileRepo)
class UserProfileRepoImpl extends UserProfileRepo {
  final UserProfileDataSource userDataSource;

  UserProfileRepoImpl({
    required this.userDataSource,
  });

  @override
  Future<Either<Failure, ProfileModel?>> getProfile() async {
    try {
      final response = await userDataSource.getUserProfileResponse();
      return right(response);
    } on ServerException catch (e) {
      return Left(BaseResponseFailure(
        message: e.errorMessage.toString(),
      ));
    } catch (e) {
      log("message ${e}");
      return Left(BaseResponseFailure(message: 'Something went wrong'));
    }
  }

  @override
  Future<Either<Failure, bool?>> logout() async {
    final response = await userDataSource.logoutResponse();
    return right(response);
  }
}
