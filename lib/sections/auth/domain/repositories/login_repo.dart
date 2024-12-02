import 'package:dartz/dartz.dart';
import 'package:advice/core/error/failures.dart';
import 'package:advice/sections/auth/domain/entities/login_entity.dart';

abstract class LoginRepo {
  Future<Either<Failure, LoginEntity>> performLogin({
    required String email,
    required String password,
  });
}
