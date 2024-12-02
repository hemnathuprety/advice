import 'package:dartz/dartz.dart';
import 'package:advice/core/error/exceptions.dart';
import 'package:advice/core/error/failures.dart';
import 'package:advice/sections/auth/data/datasources/login_data_source.dart';
import 'package:advice/sections/auth/domain/entities/login_entity.dart';
import 'package:advice/sections/auth/domain/repositories/login_repo.dart';
import 'package:injectable/injectable.dart';


@LazySingleton(as: LoginRepo)
class LoginRepoImpl extends LoginRepo {
  final LoginDataSource loginDataSource;
  LoginRepoImpl({
    required this.loginDataSource,
  });

  @override
  Future<Either<Failure, LoginEntity>> performLogin({
    required email,
    required password,
  }) async {
    try {
      final response = await loginDataSource.getLoginResponse(
        email: email,
        password: password,
      );
      return right(response);
    } on ServerException catch (e) {
      return Left(BaseResponseFailure(
        message: e.errorMessage.toString(),
      ));
    } catch (e) {
      return Left(BaseResponseFailure(message: 'Something went wrong'));
    }
  }
}
