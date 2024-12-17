import 'package:advice/sections/dashboard/models/forecasts_model.dart';
import 'package:advice/themes/color_extensions.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class WeatherCard extends StatelessWidget {
  final ForecastsModel forecastModel;

  const WeatherCard({super.key, required this.forecastModel});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    List<int?> list = forecastModel.dataNextWeek![0];
    return Center(
      child: Container(
        margin: EdgeInsets.all(16.0),
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: AppColors.primary, // Background color
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Left section with temperature and highs/lows
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Today",
                  style: theme.bodyLarge?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8.0),
                Row(
                  children: [
                    Text(
                      "Avg: ${((list[3] ?? 0) + (list[4] ?? 0)) / 2}°",
                      style: theme.bodyLarge?.copyWith(
                        fontSize: 32.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    /*SizedBox(width: 8.0),
                    Icon(
                      Icons.wb_cloudy, // Example icon
                      color: Colors.white,
                      size: 32.0,
                    ),*/
                  ],
                ),
                SizedBox(height: 8.0),
                Text(
                  "High: ${list[3] ?? 0}° Low: ${list[4] ?? 0}°",
                  style: theme.bodyMedium?.copyWith(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            // Right section with weather status and arrow
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "Weather",
                  style: theme.bodyLarge?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  "Humidity: ${list[2]}%",
                  style: theme.bodyMedium?.copyWith(
                    color: Colors.white,
                  ),
                ),
                Text(
                  "Wind: ${list[5]} km/h",
                  style: theme.bodyMedium?.copyWith(
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 16.0),
                InkWell(
                  onTap: () {
                    AutoRouter.of(context).pushNamed("/weatherDetail");
                  },
                  child: Icon(
                    FeatherIcons.chevronRight, // Right arrow icon
                    color: Colors.white,
                    size: 24.0,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
