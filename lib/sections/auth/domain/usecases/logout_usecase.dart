import 'package:dartz/dartz.dart';
import 'package:advice/core/error/failures.dart';
import 'package:advice/core/use_cases/usecase.dart';
import 'package:advice/sections/auth/domain/repositories/user_profile_repo.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class LogoutUseCase implements UseCase<bool?, dynamic> {
  final UserProfileRepo userProfileRepo;

  LogoutUseCase({
    required this.userProfileRepo,
  });

  @override
  Future<Either<Failure, bool?>> call(dynamic) async =>
      await userProfileRepo.logout();
}
