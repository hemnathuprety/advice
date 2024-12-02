import 'package:dartz/dartz.dart';
import 'package:advice/core/error/failures.dart';
import 'package:advice/core/use_cases/usecase.dart';
import 'package:advice/sections/advisory/domain/entities/roads_from_division_entity.dart';
import 'package:advice/sections/advisory/domain/repositories/advisory_repo.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class RoadsDivisionUsecase
    implements UseCase<RoadsFromDivisionEntity?, String> {
  final AdvisoryRepo roadCloserRepo;

  RoadsDivisionUsecase({
    required this.roadCloserRepo,
  });

  @override
  Future<Either<Failure, RoadsFromDivisionEntity?>> call(String param) async =>
      await roadCloserRepo.getRoadsFromDivision(param);
}
