import 'package:dartz/dartz.dart';
import 'package:advice/core/error/failures.dart';
import 'package:advice/core/use_cases/usecase.dart';
import 'package:advice/sections/road-closure/domain/entities/road_closer_history_data.dart';
import 'package:advice/sections/road-closure/domain/repositories/road_closer_repo.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class RoadCloserHistoryPaginatedUsecase
    implements UseCase<RoadCloserHistoryData?, int> {
  final RoadCloserRepo roadCloserRepo;

  RoadCloserHistoryPaginatedUsecase({
    required this.roadCloserRepo,
  });

  @override
  Future<Either<Failure, RoadCloserHistoryData?>> call(int params) async =>
      await roadCloserRepo.getRoadClosureHistoryPaginated(params);
}
