import 'package:dartz/dartz.dart';
import 'package:advice/core/error/failures.dart';
import 'package:advice/core/use_cases/usecase.dart';
import 'package:advice/sections/alerts/domain/repositories/alerts_repo.dart';
import 'package:advice/sections/dashboard/domain/entities/dashboard_alerts.dart';
import 'package:advice/sections/dashboard/domain/repositories/dashboard_repo.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class AlertsUsecase implements UseCase<dynamic, AlertParams> {
  final AlertsRepo alertsRepo;

  AlertsUsecase({
    required this.alertsRepo,
  });

  @override
  Future<Either<Failure, dynamic>> call(AlertParams params) async =>
      await alertsRepo.getAlerts(params);
}
