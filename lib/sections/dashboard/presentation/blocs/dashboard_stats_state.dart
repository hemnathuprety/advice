part of 'dashboard_stats_bloc.dart';

@freezed
class DashboardStatsState with _$DashboardStatsState {
  const factory DashboardStatsState.initial({
    ForecastsModel? forecastModel,
    LocationsModel? locations,
    @Default(false) bool isLoading,
    @Default(false) bool hasError,
    @Default(false) bool isLocationLoaded,
  }) = _Initial;
}
