import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:advice/core/constants/view_status.dart';
import 'package:advice/core/error/failures.dart';
import 'package:advice/core/use_cases/usecase.dart';
import 'package:advice/sections/alerts/domain/usecases/alerts_usecase.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'alerts_event.dart';
part 'alerts_state.dart';

class AlertsBloc extends Bloc<AlertsEvent, AlertsState> {
  final AlertsUsecase alertsUsecase;

  AlertsBloc({required this.alertsUsecase}) : super(AlertsState()) {
    on<GetAlertsDataEvent>(_getAlertsDataEvent);
    on<DataResetEvent>(_onDataReset);
  }

  Future<void> _onDataReset(
      DataResetEvent event, Emitter<AlertsState> emit) async {
    emit(state.copyWith(
      status: ViewStatus.initial,
      pageIndex: 1,
      hasReachedMax: false,
    ));
  }

  Future<void> _getAlertsDataEvent(
      GetAlertsDataEvent event, Emitter<AlertsState> emit) async {
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
      final Either<Failure, dynamic> response = await alertsUsecase.call(
        AlertParams(
          tab: state.currentTab,
          page: state.pageIndex.toString(),
        ),
      );

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
                      dataEntity: data.data,
                      totalRows: data.totalRows,
                      hasReachedMax: false,
                    )
                  : state.copyWith(
                      status: ViewStatus.success,
                      dataEntity: List.of(state.dataEntity)
                        ..addAll(data.data ?? []),
                      totalRows: data.totalRows,
                      hasReachedMax: false,
                    ));
        }
      });
    } catch (e) {
      log('error in bloc: $e');
    }
  }
}
