import 'dart:async';

import 'package:advice/sections/dashboard/models/dashboard_alerts.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

part 'dashboard_stats_event.dart';
part 'dashboard_stats_state.dart';

@injectable
class DashboardStatsBloc
    extends Bloc<DashboardStatsEvent, DashboardStatsState> {
  DashboardStatsBloc() : super(DashboardInitial()) {
    on<GetDashboardAlertsEvent>(_getDashboardStats);
  }

  FutureOr<void> _getDashboardStats(
      GetDashboardAlertsEvent event, Emitter<DashboardStatsState> emit) async {
    emit(DashboardLoading());
    /*try {
      final Either<Failure, DashboardAlertsEntity?> response =
          await dashboardUsecase.call(event.page);
      response.fold((l) {
        final BaseResponseFailure errorMessage = l as BaseResponseFailure;

        emit(DashboardFailed(errorMessage: errorMessage.message));
        log('Dashboard error in bloc: ${errorMessage.message}');
      }, (data) async {
        if (data != null) emit(DashboardSuccess(dashboardStatsEntity: data));
      });
    } catch (e) {
      log('Dashboard error in bloc: $e');
    }*/
  }
}
