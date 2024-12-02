import 'package:dartz/dartz.dart';
import 'package:advice/core/error/failures.dart';
import 'package:advice/sections/dashboard/domain/entities/dashboard_alerts.dart';

abstract class DashboardRepo {
  Future<Either<Failure, DashboardAlertsEntity?>> getDashboardAlerts(String params);
}
