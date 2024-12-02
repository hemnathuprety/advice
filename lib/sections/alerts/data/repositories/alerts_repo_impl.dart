import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:advice/core/error/exceptions.dart';
import 'package:advice/core/error/failures.dart';
import 'package:advice/core/use_cases/usecase.dart';
import 'package:advice/sections/alerts/data/datasources/alert_data_source.dart';
import 'package:advice/sections/alerts/domain/repositories/alerts_repo.dart';
import 'package:advice/sections/bridge-closure/data/datasources/bridge_closer_data_source.dart';
import 'package:advice/sections/dashboard/data/datasources/dashboard_data_source.dart';
import 'package:advice/sections/road-closure/data/datasources/road_closer_data_source.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: AlertsRepo)
class AlertsRepoImpl extends AlertsRepo {
  final AlertDataSource alertDataSource;
  final DashboardDataSource dashboardDataSource;
  final RoadCloserDataSource roadCloserDataSource;
  final BridgeCloserDataSource bridgeCloserDataSource;

  AlertsRepoImpl({
    required this.alertDataSource,
    required this.dashboardDataSource,
    required this.roadCloserDataSource,
    required this.bridgeCloserDataSource,
  });

  @override
  Future<Either<Failure, dynamic>> getAlerts(AlertParams params) async {
    try {
      Object? result;
      if (params.tab == 0) {
        result = await roadCloserDataSource
            .getRoadClosureHistoryPaginated(int.parse(params.page));
      } else if (params.tab == 1) {
        result = bridgeCloserDataSource
            .getBridgeClosureHistoryPaginated(int.parse(params.page));
      } else if (params.tab == 2) {
        result =
            dashboardDataSource.getAlertsByTypes(params.page, "flashFlood");
      } else if (params.tab == 3) {
        result = dashboardDataSource.getAlertsByTypes(params.page, "rainfall");
      } else if (params.tab == 4) {
        result =
            dashboardDataSource.getAlertsByTypes(params.page, "recentlyOpened");
      }

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
