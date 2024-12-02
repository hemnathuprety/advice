import 'package:dartz/dartz.dart';
import 'package:advice/core/error/failures.dart';
import 'package:advice/core/use_cases/usecase.dart';
import 'package:advice/sections/dashboard/domain/entities/dashboard_alerts.dart';
import 'package:advice/sections/dashboard/domain/repositories/dashboard_repo.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class DashboardUsecase implements UseCase<DashboardAlertsEntity?, String> {
  final DashboardRepo dashboardRepo;

  DashboardUsecase({
    required this.dashboardRepo,
  });

  @override
  Future<Either<Failure, DashboardAlertsEntity?>> call(String params) async =>
      await dashboardRepo.getDashboardAlerts(params);
}
