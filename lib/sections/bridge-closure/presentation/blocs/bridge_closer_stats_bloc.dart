import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:advice/core/error/failures.dart';
import 'package:advice/sections/bridge-closure/domain/entities/bridge_closer_stats.dart';
import 'package:advice/sections/bridge-closure/domain/usecases/bridge_closer_usecase.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

part 'bridge_closer_stats_event.dart';
part 'bridge_closer_stats_state.dart';

@injectable
class BridgeCloserStatsBloc
    extends Bloc<BridgeCloserStatsEvent, BridgeCloserStatsState> {
  final BridgeCloserUsecase bridgeCloserUsecase;

  BridgeCloserStatsBloc({required this.bridgeCloserUsecase})
      : super(BridgeCloserStatsInitial()) {
    on<GetBridgeCloserStatsEvent>(_getRoadCloserStats);
  }

  FutureOr<void> _getRoadCloserStats(GetBridgeCloserStatsEvent event,
      Emitter<BridgeCloserStatsState> emit) async {
    emit(BridgeCloserStatsLoading());
    try {
      final Either<Failure, BridgeCloserStatsEntity?> response =
          await bridgeCloserUsecase.call(event.year);
      response.fold((l) {
        final BaseResponseFailure errorMessage = l as BaseResponseFailure;

        emit(BridgeCloserStatsFailed(errorMessage: errorMessage.message));
        log('error in bloc: ${errorMessage.message}');
      }, (data) async {
        log('Data log: ${data?.monthWiseStatsEntity}');
        if (data != null) {
          emit(BridgeCloserStatsSuccess(statsEntity: data));
        }
      });
    } catch (e) {
      log('error in bloc: $e');
    }
  }
}
