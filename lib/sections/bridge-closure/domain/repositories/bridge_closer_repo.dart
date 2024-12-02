import 'package:dartz/dartz.dart';
import 'package:advice/core/error/failures.dart';
import 'package:advice/sections/bridge-closure/data/models/bridge_closer_history_data_model.dart';
import 'package:advice/sections/bridge-closure/domain/entities/bridge_closer_stats.dart';

abstract class BridgeCloserRepo {
  Future<Either<Failure, BridgeCloserStatsEntity?>> getBridgeCloserStats(
      String params);

  Future<Either<Failure, BridgeCloserHistoryDataModel?>>
      getBridgeClosureHistoryPaginated(int params);

  Future<Either<Failure, BridgeCloserHistoryDataModel?>>
      getBridgeClosureHistory(String month, String year);
}
