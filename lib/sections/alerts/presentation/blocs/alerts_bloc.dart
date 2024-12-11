import 'dart:async';

import 'package:advice/core/constants/view_status.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'alerts_event.dart';
part 'alerts_state.dart';

class AlertsBloc extends Bloc<AlertsEvent, AlertsState> {
  /*final AlertsUsecase alertsUsecase;*/

  AlertsBloc() : super(AlertsState()) {
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
  }
}
