part of 'dashboard_stats_bloc.dart';

@freezed
class DashboardStatsState with _$DashboardStatsState {
  const factory DashboardStatsState.initial({
    ForecastsModel? forecastModel,
    @Default(false) bool isLoading,
    @Default(false) bool hasError,
  }) = _Initial;
}
