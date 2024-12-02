import 'package:dartz/dartz.dart';
import 'package:advice/core/error/failures.dart';
import 'package:advice/core/use_cases/usecase.dart';
import 'package:advice/sections/bridge-closure/domain/entities/bridge_closer_stats.dart';
import 'package:advice/sections/bridge-closure/domain/repositories/bridge_closer_repo.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class BridgeCloserUsecase implements UseCase<BridgeCloserStatsEntity?, String> {
  final BridgeCloserRepo bridgeCloserRepo;

  BridgeCloserUsecase({
    required this.bridgeCloserRepo,
  });

  @override
  Future<Either<Failure, BridgeCloserStatsEntity?>> call(String params) async =>
      await bridgeCloserRepo.getBridgeCloserStats(params);
}
