import 'package:dartz/dartz.dart';
import 'package:advice/core/base_response_model.dart';
import 'package:advice/core/error/failures.dart';
import 'package:advice/core/use_cases/usecase.dart';
import 'package:advice/sections/advisory/domain/repositories/advisory_repo.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class PostAdvisoryUsecase implements UseCase<BaseResponseModel?, dynamic> {
  final AdvisoryRepo roadCloserRepo;

  PostAdvisoryUsecase({
    required this.roadCloserRepo,
  });

  @override
  Future<Either<Failure, BaseResponseModel?>> call(dynamic param) async =>
      await roadCloserRepo.postAdvisory(param);
}
