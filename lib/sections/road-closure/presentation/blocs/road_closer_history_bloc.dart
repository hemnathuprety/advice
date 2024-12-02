import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:advice/core/constants/view_status.dart';
import 'package:advice/core/error/failures.dart';
import 'package:advice/core/use_cases/usecase.dart';
import 'package:advice/sections/road-closure/domain/entities/road_closer_history_data.dart';
import 'package:advice/sections/road-closure/domain/entities/road_closer_history_entity.dart';
import 'package:advice/sections/road-closure/domain/usecases/road_closer_history_paginated_usecase.dart';
import 'package:advice/sections/road-closure/domain/usecases/road_closer_history_usecase.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

part 'road_closer_history_event.dart';
part 'road_closer_history_state.dart';

@injectable
class RoadCloserHistoryBloc
    extends Bloc<RoadCloserHistoryEvent, RoadCloserHistoryState> {
  final RoadCloserHistoryPaginatedUsecase roadCloserUsecase;
  final RoadCloserHistoryUsecase roadCloserHistoryUsecase;

  RoadCloserHistoryBloc(
      {required this.roadCloserUsecase, required this.roadCloserHistoryUsecase})
      : super(const RoadCloserHistoryState()) {
    on<GetRoadCloserHistoryEvent>(_getRoadCloserHistory);
    on<DataResetEvent>(_onDataReset);
  }

  FutureOr<void> _getRoadCloserHistory(
    GetRoadCloserHistoryEvent event,
    Emitter<RoadCloserHistoryState> emit,
  ) async {
    if (state.hasReachedMax) return;

    if (state.status != ViewStatus.initial) {
      var totalRows = state.totalRows;

      if (state.hasReachedMax) return;

      if (totalRows / 10 < state.pageIndex) {
        emit(state.copyWith(hasReachedMax: true));
        return;
      }

      emit(state.copyWith(pageIndex: state.pageIndex + 1));
    }

    try {
      if (!event.isFiltered) {
        final Either<Failure, RoadCloserHistoryData?> response =
            await roadCloserUsecase.call(state.pageIndex);

        response.fold((l) {
          final BaseResponseFailure errorMessage = l as BaseResponseFailure;

          emit(state.copyWith(
            status: ViewStatus.failure,
            error: errorMessage.message,
            hasReachedMax: true,
          ));

          log('error in bloc: ${errorMessage.message}');
        }, (data) async {
          log('totalRows: ${data?.totalRows}');

          if (data != null) {
            emit(data.data?.isEmpty == true
                ? state.copyWith(
                    hasReachedMax: true,
                    status: ViewStatus.success,
                  )
                : state.pageIndex == 1
                    ? state.copyWith(
                        status: ViewStatus.success,
                        statsEntity: data.data,
                        totalRows: int.parse(data.totalRows ?? "0"),
                        hasReachedMax: false,
                      )
                    : state.copyWith(
                        status: ViewStatus.success,
                        statsEntity: List.of(state.statsEntity)
                          ..addAll(data.data ?? []),
                        totalRows: int.parse(data.totalRows ?? "0"),
                        hasReachedMax: false,
                      ));
          }
        });
      } else {
        final MonthYearParams param =
            MonthYearParams(month: event.month, year: event.year);
        final Either<Failure, RoadCloserHistoryData?> response =
            await roadCloserHistoryUsecase.call(param);

        response.fold((l) {
          final BaseResponseFailure errorMessage = l as BaseResponseFailure;

          emit(state.copyWith(
            status: ViewStatus.failure,
            error: errorMessage.message,
            hasReachedMax: true,
          ));
          log('error in bloc: ${errorMessage.message}');
        }, (data) async {
          log('totalRows: ${data?.totalRows}');
          if (data != null) {
            emit(state.copyWith(
              status: ViewStatus.success,
              statsEntity: data.data,
              totalRows: int.parse(data.totalRows ?? "0"),
              hasReachedMax: true,
            ));
          }
        });
      }
    } catch (e) {
      log('error in bloc: $e');
    }
  }

  Future<void> _onDataReset(
      DataResetEvent event, Emitter<RoadCloserHistoryState> emit) async {
    emit(state.copyWith(
      status: ViewStatus.initial,
      pageIndex: 1,
      hasReachedMax: false,
    ));
  }
}
