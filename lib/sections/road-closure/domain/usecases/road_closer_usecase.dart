import 'package:dartz/dartz.dart';
import 'package:advice/core/error/failures.dart';
import 'package:advice/core/use_cases/usecase.dart';
import 'package:advice/sections/road-closure/domain/entities/road_closer_stats.dart';
import 'package:advice/sections/road-closure/domain/repositories/road_closer_repo.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class RoadCloserUsecase implements UseCase<RoadCloserStatsEntity?, String> {
  final RoadCloserRepo roadCloserRepo;

  RoadCloserUsecase({
    required this.roadCloserRepo,
  });

  @override
  Future<Either<Failure, RoadCloserStatsEntity?>> call(String params) async =>
      await roadCloserRepo.getRoadCloserStats(params);
}
