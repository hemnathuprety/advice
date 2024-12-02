import 'package:dartz/dartz.dart';
import 'package:advice/core/error/failures.dart';
import 'package:advice/core/use_cases/usecase.dart';

abstract class AlertsRepo {
  Future<Either<Failure, dynamic>> getAlerts(AlertParams params);
}
