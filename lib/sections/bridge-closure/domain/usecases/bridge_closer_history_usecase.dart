import 'package:dartz/dartz.dart';
import 'package:advice/core/error/failures.dart';
import 'package:advice/core/use_cases/usecase.dart';
import 'package:advice/sections/bridge-closure/domain/entities/bridge_closer_history_data.dart';
import 'package:advice/sections/bridge-closure/domain/repositories/bridge_closer_repo.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class BridgeCloserHistoryUsecase
    implements UseCase<BridgeCloserHistoryData?, MonthYearParams> {
  final BridgeCloserRepo bridgeCloserRepo;

  BridgeCloserHistoryUsecase({
    required this.bridgeCloserRepo,
  });

  @override
  Future<Either<Failure, BridgeCloserHistoryData?>> call(
          MonthYearParams param) async =>
      await bridgeCloserRepo.getBridgeClosureHistory(param.month, param.year);
}
