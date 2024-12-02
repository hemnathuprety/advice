part of 'dashboard_stats_bloc.dart';

abstract class DashboardStatsEvent extends Equatable {
  const DashboardStatsEvent();

  @override
  List<Object> get props => [];
}

class GetDashboardAlertsEvent extends DashboardStatsEvent {
  final String page;

  const GetDashboardAlertsEvent({required this.page});

  @override
  List<Object> get props => [page];
}
