import 'package:dartz/dartz.dart';
import 'package:advice/core/error/failures.dart';
import 'package:advice/core/use_cases/usecase.dart';
import 'package:advice/sections/advisory/domain/entities/divisions_entity.dart';
import 'package:advice/sections/advisory/domain/repositories/advisory_repo.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class DivisionsUsecase implements UseCase<DivisionsEntity?, NoParams> {
  final AdvisoryRepo roadCloserRepo;

  DivisionsUsecase({
    required this.roadCloserRepo,
  });

  @override
  Future<Either<Failure, DivisionsEntity?>> call(NoParams param) async =>
      await roadCloserRepo.getDivisions(param);
}
