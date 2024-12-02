import 'package:dartz/dartz.dart';
import 'package:advice/core/error/failures.dart';
import 'package:advice/core/use_cases/usecase.dart';
import 'package:advice/sections/bridge-closure/domain/entities/bridge_closer_history_data.dart';
import 'package:advice/sections/bridge-closure/domain/repositories/bridge_closer_repo.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class BridgeCloserHistoryPaginatedUsecase
    implements UseCase<BridgeCloserHistoryData?, int> {
  final BridgeCloserRepo bridgeCloserRepo;

  BridgeCloserHistoryPaginatedUsecase({
    required this.bridgeCloserRepo,
  });

  @override
  Future<Either<Failure, BridgeCloserHistoryData?>> call(int params) async =>
      await bridgeCloserRepo.getBridgeClosureHistoryPaginated(params);
}
