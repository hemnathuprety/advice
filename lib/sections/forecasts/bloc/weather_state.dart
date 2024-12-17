part of 'weather_bloc.dart';

@freezed
class WeatherState with _$WeatherState {
  const factory WeatherState.initial({
    ForecastsModel? forecastModel,
    @Default(false) bool isLoading,
    @Default(false) bool hasError,
  }) = _Initial;
}
