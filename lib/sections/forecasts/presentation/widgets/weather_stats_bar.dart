import 'package:advice/themes/color_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class WeatherStatsBar extends StatelessWidget {
  final List<int?> dataToday;

  const WeatherStatsBar({super.key, required this. dataToday});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;

    return Center(
      child: Container(
        margin: EdgeInsets.all(16.0),
        padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
        decoration: BoxDecoration(
          color: AppColors.surfaceColorDark, // Dark background color
          borderRadius: BorderRadius.circular(20.0), // Rounded corners
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            // First item
            Column(
              children: [
                Icon(
                  FeatherIcons.cloudDrizzle, // Example icon for precipitation
                  color: Colors.white,
                  size: 24.0,
                ),
                SizedBox(height: 4.0),
                Text(
                  "${dataToday[1]}%",
                  style: theme.bodyLarge?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            // Second item
            Column(
              children: [
                Icon(
                  Icons.thermostat, // Example icon for temperature
                  color: Colors.white,
                  size: 24.0,
                ),
                SizedBox(height: 4.0),
                Text(
                  "${dataToday[2]}%",
                  style: theme.bodyLarge?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            // Third item
            Column(
              children: [
                Icon(
                  FeatherIcons.wind, // Example icon for wind speed
                  color: Colors.white,
                  size: 24.0,
                ),
                SizedBox(height: 4.0),
                Text(
                  "${dataToday[5]} km/h",
                  style: theme.bodyLarge?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
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
