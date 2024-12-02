import 'package:dartz/dartz.dart';
import 'package:advice/core/error/failures.dart';
import 'package:advice/core/use_cases/usecase.dart';
import 'package:advice/sections/road-closure/data/models/road_closer_history_data_model.dart';
import 'package:advice/sections/road-closure/domain/repositories/road_closer_repo.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class RoadCloserHistoryUsecase
    implements UseCase<RoadCloserHistoryDataModel?, MonthYearParams> {
  final RoadCloserRepo roadCloserRepo;

  RoadCloserHistoryUsecase({
    required this.roadCloserRepo,
  });

  @override
  Future<Either<Failure, RoadCloserHistoryDataModel?>> call(
          MonthYearParams param) async =>
      await roadCloserRepo.getRoadClosureHistory(param.month, param.year);
}
