import 'package:advice/core/components/circle_container_view.dart';
import 'package:advice/core/di/injection_container.dart';
import 'package:advice/sections/forecasts/bloc/weather_bloc.dart';
import 'package:advice/sections/forecasts/presentation/widgets/weather_day_card.dart';
import 'package:advice/sections/forecasts/presentation/widgets/weather_stats_bar.dart';
import 'package:advice/themes/color_extensions.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

@RoutePage()
class ForecastDetailScreen extends StatelessWidget {
  const ForecastDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return BlocProvider(
      create: (context) => getIt<WeatherBloc>()..add(WeatherEvent.started()),
      child: Scaffold(
          backgroundColor: AppColors.primary,
          body: BlocBuilder<WeatherBloc, WeatherState>(
            builder: (context, state) {
              List<int?> dataToday = state.forecastModel?.dataNextWeek?[0] ??
                  [0, 0, 0, 0, 0, 0, 0];
              var length = state.forecastModel?.dataNextWeek!.length ?? 0;
              return Column(
                children: [
                  SafeArea(
                    child: Container(
                      height: 60.0,
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: Stack(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: CircleContainerView(
                              width: 40,
                              height: 40,
                              borderColor:
                                  AppColors.borderNeutralColor.withOpacity(0.5),
                              child: IconButton(
                                onPressed: () {
                                  AutoRouter.of(context).popUntilRoot();
                                },
                                padding: EdgeInsets.all(0),
                                iconSize: 24,
                                icon: Icon(
                                  FeatherIcons.chevronLeft,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              "Weather",
                              style: theme.titleLarge?.copyWith(
                                color: AppColors.primaryTextColorLight,
                                fontWeight: FontWeight.w600,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Center(
                    child: Icon(
                      FeatherIcons.thermometer, // Example icon
                      color: Colors.white,
                      size: 60.0,
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Center(
                    child: Text(
                      "High: ${dataToday[3] ?? 0}° Low: ${dataToday[4] ?? 0}°",
                      style: theme.bodyLarge?.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  WeatherStatsBar(dataToday: dataToday),
                  Container(
                    margin: EdgeInsets.all(16.0),
                    padding:
                        EdgeInsets.symmetric(vertical: 16.0, horizontal: 20.0),
                    decoration: BoxDecoration(
                      // Dark background color
                      color: AppColors.surfaceColorDark,
                      borderRadius:
                          BorderRadius.circular(20.0), // Rounded corners
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // Day of the week
                            Text(
                              "Next Forecast",
                              style: theme.titleMedium?.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Colors.white, // Text color
                              ),
                            ),
                            Icon(
                              FeatherIcons.calendar,
                              // Example icon for precipitation
                              color: Colors.white,
                              size: 20.0,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 16.0,
                        ),
                        for (int i = 0; i < 7; i++)
                          if (length > i)
                            WeatherDayCard(
                              index: i,
                              dataNextWeek: state.forecastModel?.dataNextWeek,
                            ),
                      ],
                    ),
                  ),
                ],
              );
            },
          )),
    );
  }
}
