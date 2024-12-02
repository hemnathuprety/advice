part of 'dashboard_stats_bloc.dart';

abstract class DashboardStatsState extends Equatable {
  const DashboardStatsState();

  @override
  List<Object> get props => [];
}

class DashboardInitial extends DashboardStatsState {}

class DashboardLoading extends DashboardStatsState {
  @override
  List<Object> get props => [];
}


class DashboardSuccess extends DashboardStatsState {
  final DashboardAlertsEntity dashboardStatsEntity;

  const DashboardSuccess({required this.dashboardStatsEntity});

  @override
  List<Object> get props => [dashboardStatsEntity];
}

class DashboardFailed extends DashboardStatsState {
  final String errorMessage;

  const DashboardFailed({required this.errorMessage});

  @override
  List<Object> get props => [errorMessage];
}
