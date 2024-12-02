import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:advice/core/error/failures.dart';
import 'package:advice/sections/road-closure/domain/entities/road_closer_stats.dart';
import 'package:advice/sections/road-closure/domain/usecases/road_closer_usecase.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

part 'road_closer_stats_event.dart';
part 'road_closer_stats_state.dart';

@injectable
class RoadCloserStatsBloc
    extends Bloc<RoadCloserStatsEvent, RoadCloserStatsState> {
  final RoadCloserUsecase roadCloserUsecase;

  RoadCloserStatsBloc({required this.roadCloserUsecase})
      : super(RoadCloserStatsInitial()) {
    on<GetRoadCloserStatsEvent>(_getRoadCloserStats);
  }

  FutureOr<void> _getRoadCloserStats(
      GetRoadCloserStatsEvent event, Emitter<RoadCloserStatsState> emit) async {
    emit(RoadCloserStatsLoading());
    try {
      final Either<Failure, RoadCloserStatsEntity?> response =
          await roadCloserUsecase.call(event.year);
      response.fold((l) {
        final BaseResponseFailure errorMessage = l as BaseResponseFailure;

        emit(RoadCloserStatsFailed(errorMessage: errorMessage.message));
        log('error in bloc: ${errorMessage.message}');
      }, (data) async {
        log('Data log: ${data?.monthWiseStatsEntity}');
        if (data != null) {
          emit(RoadCloserStatsSuccess(statsEntity: data));
        }
      });
    } catch (e) {
      log('error in bloc: $e');
    }
  }
}
