import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:advice/core/error/exceptions.dart';
import 'package:advice/core/error/failures.dart';
import 'package:advice/sections/bridge-closure/data/datasources/bridge_closer_data_source.dart';
import 'package:advice/sections/bridge-closure/data/models/bridge_closer_history_data_model.dart';
import 'package:advice/sections/bridge-closure/domain/entities/bridge_closer_stats.dart';
import 'package:advice/sections/bridge-closure/domain/repositories/bridge_closer_repo.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: BridgeCloserRepo)
class BridgeCloserRepoImpl extends BridgeCloserRepo {
  final BridgeCloserDataSource bridgeCloserDataSource;

  BridgeCloserRepoImpl({
    required this.bridgeCloserDataSource,
  });

  @override
  Future<Either<Failure, BridgeCloserStatsEntity?>> getBridgeCloserStats(
      String params) async {
    try {
      final List<Future<dynamic>> fetchers = [
        bridgeCloserDataSource.getBridgeClosureAggregateStats(params),
        bridgeCloserDataSource.getBridgeClosureMonthwiseStats(params),
        bridgeCloserDataSource.getMonthWiseAvgRepairTime(params),
        bridgeCloserDataSource.getDistrictWiseStats(params),
        bridgeCloserDataSource.getRoadWiseStats(params)
      ];

      final List<dynamic> results = await Future.wait(fetchers);

      BridgeCloserStatsEntity roadCloserStats = BridgeCloserStatsEntity(
        aggregateStatsEntity: results[0],
        monthWiseStatsEntity: results[1],
        monthWiseAvgRepairStats: results[2],
        districtWiseStats: results[3],
        bridgeWiseStats: results[4],
      );
      return right(roadCloserStats);
    } on ServerException catch (e) {
      return Left(BaseResponseFailure(
        message: e.errorMessage.toString(),
      ));
    } catch (e) {
      log("message $e");
      return Left(BaseResponseFailure(message: 'Something went wrong'));
    }
  }

  @override
  Future<Either<Failure, BridgeCloserHistoryDataModel?>>
      getBridgeClosureHistoryPaginated(int params) async {
    try {
      final result =
          await bridgeCloserDataSource.getBridgeClosureHistoryPaginated(params);

      return right(result);
    } on ServerException catch (e) {
      return Left(BaseResponseFailure(
        message: e.errorMessage.toString(),
      ));
    } catch (e) {
      log("message $e");
      return Left(BaseResponseFailure(message: 'Something went wrong'));
    }
  }

  @override
  Future<Either<Failure, BridgeCloserHistoryDataModel?>>
      getBridgeClosureHistory(String month, String year) async {
    try {
      final result =
          await bridgeCloserDataSource.getBridgeClosureHistory(month, year);

      return right(result);
    } on ServerException catch (e) {
      return Left(BaseResponseFailure(
        message: e.errorMessage.toString(),
      ));
    } catch (e) {
      log("message $e");
      return Left(BaseResponseFailure(message: 'Something went wrong'));
    }
  }
}
