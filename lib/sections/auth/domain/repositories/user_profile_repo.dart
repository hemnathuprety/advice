import 'package:dartz/dartz.dart';
import 'package:advice/core/error/failures.dart';
import 'package:advice/sections/auth/data/models/profile_model.dart';

abstract class UserProfileRepo {
  Future<Either<Failure, ProfileModel?>> getProfile();

  Future<Either<Failure, bool?>> logout();
}
