import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:advice/core/constants/view_status.dart';
import 'package:advice/core/error/failures.dart';
import 'package:advice/core/use_cases/usecase.dart';
import 'package:advice/sections/bridge-closure/domain/entities/bridge_closer_history_data.dart';
import 'package:advice/sections/bridge-closure/domain/entities/bridge_closer_history_entity.dart';
import 'package:advice/sections/bridge-closure/domain/usecases/bridge_closer_history_paginated_usecase.dart';
import 'package:advice/sections/bridge-closure/domain/usecases/bridge_closer_history_usecase.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

part 'bridge_closer_history_event.dart';
part 'bridge_closer_history_state.dart';

@injectable
class BridgeCloserHistoryBloc
    extends Bloc<BridgeCloserHistoryEvent, BridgeCloserHistoryState> {
  final BridgeCloserHistoryPaginatedUsecase bridgeCloserHistoryPaginatedUsecase;
  final BridgeCloserHistoryUsecase bridgeCloserHistoryUsecase;

  BridgeCloserHistoryBloc(
      {required this.bridgeCloserHistoryPaginatedUsecase,
      required this.bridgeCloserHistoryUsecase})
      : super(const BridgeCloserHistoryState()) {
    on<GetBridgeCloserHistoryEvent>(_getRoadCloserHistory);
    on<DataResetEvent>(_onDataReset);
  }

  FutureOr<void> _getRoadCloserHistory(
    GetBridgeCloserHistoryEvent event,
    Emitter<BridgeCloserHistoryState> emit,
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
        final Either<Failure, BridgeCloserHistoryData?> response =
            await bridgeCloserHistoryPaginatedUsecase.call(state.pageIndex);

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
                        totalRows: data.totalRows,
                        hasReachedMax: false,
                      )
                    : state.copyWith(
                        status: ViewStatus.success,
                        statsEntity: List.of(state.statsEntity)
                          ..addAll(data.data ?? []),
                        totalRows: data.totalRows,
                        hasReachedMax: false,
                      ));
          }
        });
      } else {
        final MonthYearParams param =
            MonthYearParams(month: event.month, year: event.year);
        final Either<Failure, BridgeCloserHistoryData?> response =
            await bridgeCloserHistoryUsecase.call(param);

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
              totalRows: data.totalRows,
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
      DataResetEvent event, Emitter<BridgeCloserHistoryState> emit) async {
    emit(state.copyWith(
      status: ViewStatus.initial,
      pageIndex: 1,
      hasReachedMax: false,
    ));
  }
}
