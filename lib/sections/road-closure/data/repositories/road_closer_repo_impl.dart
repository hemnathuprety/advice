import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:advice/core/error/exceptions.dart';
import 'package:advice/core/error/failures.dart';
import 'package:advice/sections/road-closure/data/datasources/road_closer_data_source.dart';
import 'package:advice/sections/road-closure/data/models/road_closer_history_data_model.dart';
import 'package:advice/sections/road-closure/domain/entities/road_closer_stats.dart';
import 'package:advice/sections/road-closure/domain/repositories/road_closer_repo.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: RoadCloserRepo)
class RoadCloserRepoImpl extends RoadCloserRepo {
  final RoadCloserDataSource roadCloserDataSource;

  RoadCloserRepoImpl({
    required this.roadCloserDataSource,
  });

  @override
  Future<Either<Failure, RoadCloserStatsEntity?>> getRoadCloserStats(
      String params) async {
    try {
      final List<Future<dynamic>> fetchers = [
        roadCloserDataSource.getAggregateStats(params),
        roadCloserDataSource.getMonthWiseStats(params),
        roadCloserDataSource.getMonthWiseAvgRepairTime(params),
        roadCloserDataSource.getDistrictWiseStats(params),
        roadCloserDataSource.getRoadWiseStats(params)
      ];

      final List<dynamic> results = await Future.wait(fetchers);

      RoadCloserStatsEntity roadCloserStats = RoadCloserStatsEntity(
        aggregateStatsEntity: results[0],
        monthWiseStatsEntity: results[1],
        monthWiseAvgRepairStats: results[2],
        districtWiseStats: results[3],
        roadWiseStats: results[4],
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
  Future<Either<Failure, RoadCloserHistoryDataModel?>>
      getRoadClosureHistoryPaginated(int params) async {
    try {
      final result =
          await roadCloserDataSource.getRoadClosureHistoryPaginated(params);
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
  Future<Either<Failure, RoadCloserHistoryDataModel?>> getRoadClosureHistory(
      String month, String year) async {
    try {
      final result =
          await roadCloserDataSource.getRoadClosureHistory(month, year);

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
