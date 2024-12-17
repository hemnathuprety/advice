import 'package:advice/core/utils/date_utility.dart';
import 'package:advice/sections/dashboard/models/forecasts_model.dart';
import 'package:advice/sections/forecasts/repo/forecasts_repo.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'weather_bloc.freezed.dart';
part 'weather_event.dart';
part 'weather_state.dart';

@injectable
class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  ForecastsRepo forecastsRepo;

  WeatherBloc({required this.forecastsRepo})
      : super(const WeatherState.initial()) {
    on<WeatherEvent>((event, emit) async {
      await event.when(started: () async {
        DateTime currentDate = DateTime.now();
        DateTime futureDate = currentDate.add(Duration(days: 7));

        var administrativeId = "1";

        var startDate = DateUtility().formatDateToYYYMMDD(currentDate);
        var endDate = DateUtility().formatDateToYYYMMDD(futureDate);

        emit(state.copyWith(isLoading: true));
        var forecast = await forecastsRepo.getForecastDetails(
            startDate, endDate, administrativeId);
        emit(
          state.copyWith(forecastModel: forecast, isLoading: false),
        );
      });
    });
  }
}
