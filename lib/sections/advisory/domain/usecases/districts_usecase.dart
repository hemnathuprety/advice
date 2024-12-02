import 'package:dartz/dartz.dart';
import 'package:advice/core/error/failures.dart';
import 'package:advice/core/use_cases/usecase.dart';
import 'package:advice/sections/advisory/domain/entities/districts_entity.dart';
import 'package:advice/sections/advisory/domain/repositories/advisory_repo.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class DistrictsUsecase implements UseCase<DistrictsEntity?, NoParams> {
  final AdvisoryRepo roadCloserRepo;

  DistrictsUsecase({
    required this.roadCloserRepo,
  });

  @override
  Future<Either<Failure, DistrictsEntity?>> call(NoParams param) async =>
      await roadCloserRepo.getAllDistricts(param);
}
