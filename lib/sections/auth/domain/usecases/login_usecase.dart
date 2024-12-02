import 'package:dartz/dartz.dart';
import 'package:advice/core/error/failures.dart';
import 'package:advice/core/use_cases/usecase.dart';
import 'package:advice/sections/auth/domain/entities/login_request_entity.dart';
import 'package:advice/sections/auth/domain/entities/login_entity.dart';
import 'package:advice/sections/auth/domain/repositories/login_repo.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class LoginUseCase implements UseCase<LoginEntity, LoginRequestEntity> {
  final LoginRepo loginRepo;

  LoginUseCase({
    required this.loginRepo,
  });

  @override
  Future<Either<Failure, LoginEntity>> call(LoginRequestEntity params) async {
    return await loginRepo.performLogin(
      email: params.email ?? "",
      password: params.password ?? "",
    );
  }
}
