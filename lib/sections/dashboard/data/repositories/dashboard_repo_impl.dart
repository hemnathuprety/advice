import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:advice/core/error/exceptions.dart';
import 'package:advice/core/error/failures.dart';
import 'package:advice/sections/bridge-closure/data/datasources/bridge_closer_data_source.dart';
import 'package:advice/sections/dashboard/data/datasources/dashboard_data_source.dart';
import 'package:advice/sections/dashboard/domain/entities/dashboard_alerts.dart';
import 'package:advice/sections/dashboard/domain/repositories/dashboard_repo.dart';
import 'package:advice/sections/road-closure/data/datasources/road_closer_data_source.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: DashboardRepo)
class DashboardRepoImpl extends DashboardRepo {
  final DashboardDataSource dashboardDataSource;
  final RoadCloserDataSource roadCloserDataSource;
  final BridgeCloserDataSource bridgeCloserDataSource;

  DashboardRepoImpl({
    required this.dashboardDataSource,
    required this.roadCloserDataSource,
    required this.bridgeCloserDataSource,
  });

  @override
  Future<Either<Failure, DashboardAlertsEntity?>> getDashboardAlerts(
      String params) async {
    try {
      final List<Future<dynamic>> fetchers = [
        roadCloserDataSource.getRoadClosureHistoryPaginated(int.parse(params)),
        bridgeCloserDataSource
            .getBridgeClosureHistoryPaginated(int.parse(params)),
        dashboardDataSource.getAlertsByTypes(params, "flashFlood"),
        dashboardDataSource.getAlertsByTypes(params, "rainfall"),
        dashboardDataSource.getAlertsByTypes(params, "recentlyOpened"),
      ];

      final List<dynamic> results = await Future.wait(fetchers);

      DashboardAlertsEntity dashboardStats = DashboardAlertsEntity(
        roadClosureEntity: results[0],
        bridgeClosureEntity: results[1],
        flashFloodEntity: results[2],
        rainfallEntity: results[3],
        recentlyOpenedEntity: results[4],
      );

      return right(dashboardStats);
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
