part of 'dashboard_stats_bloc.dart';

@freezed
class DashboardStatsEvent with _$DashboardStatsEvent {
  const factory DashboardStatsEvent.loadForecast(LocationsModel location) = _LoadForecast;
  const factory DashboardStatsEvent.locationDetailLoad(String lat, String long) = _LocationDetailLoad;

}
