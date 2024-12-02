import 'package:dartz/dartz.dart';
import 'package:advice/core/error/failures.dart';
import 'package:advice/sections/road-closure/data/models/road_closer_history_data_model.dart';
import 'package:advice/sections/road-closure/domain/entities/road_closer_stats.dart';

abstract class RoadCloserRepo {
  Future<Either<Failure, RoadCloserStatsEntity?>> getRoadCloserStats(
      String params);

  Future<Either<Failure, RoadCloserHistoryDataModel?>>
      getRoadClosureHistoryPaginated(int params);
  Future<Either<Failure, RoadCloserHistoryDataModel?>>
      getRoadClosureHistory(String month, String year);
}
