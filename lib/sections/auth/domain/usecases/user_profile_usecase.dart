import 'package:dartz/dartz.dart';
import 'package:advice/core/error/failures.dart';
import 'package:advice/core/use_cases/usecase.dart';
import 'package:advice/sections/auth/data/models/profile_model.dart';
import 'package:advice/sections/auth/domain/repositories/user_profile_repo.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class UserProfileUseCase implements UseCase<ProfileModel?, dynamic> {
  final UserProfileRepo userProfileRepo;

  UserProfileUseCase({
    required this.userProfileRepo,
  });

  @override
  Future<Either<Failure, ProfileModel?>> call(dynamic params) async =>
      await userProfileRepo.getProfile();
}
