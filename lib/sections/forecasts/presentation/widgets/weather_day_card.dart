import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class WeatherDayCard extends StatelessWidget {
  const WeatherDayCard({super.key, required this.index, this.dataNextWeek});

  final int index;

  final List<List<int?>>? dataNextWeek;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;

    List<int?> data = dataNextWeek?[index] ?? [0, 0, 0, 0, 0, 0, 0];

    // Get the current date
    DateTime currentDate = DateTime.now();

    // Generate the next 7 days' week names
    List<String> weekNames = List.generate(7, (index) {
      DateTime nextDay = currentDate.add(Duration(days: index));
      return DateFormat('EEEE')
          .format(nextDay); // Get full week name (e.g., Monday)
    });

    return Padding(
      padding: EdgeInsets.only(bottom: index == 6 ? 0 : 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Day of the week
          Text(
            weekNames[index],
            style: theme.bodyLarge?.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.white, // Text color
            ),
          ),
          // Temperature range
          Text(
            "${data[3] ?? 0}°C ${data[4] ?? 0}°C",
            style: theme.bodyLarge?.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.white, // Text color
            ),
          ),
        ],
      ),
    );
  }
}
