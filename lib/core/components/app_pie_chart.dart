import 'dart:developer';

import 'package:advice/core/components/pie_chart_indicator.dart';
import 'package:advice/sections/dashboard/domain/entities/month_wise_stats_entity.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../themes/color_extensions.dart';

class AppPieChart extends StatefulWidget {
  const AppPieChart({
    super.key,
    required this.monthWiseAvgRepairStats,
    required this.title,
  });

  final MonthWiseStatsEntity? monthWiseAvgRepairStats;
  final String title;

  @override
  State<StatefulWidget> createState() => PieChart2State();
}

class PieChart2State extends State<AppPieChart> {
  int touchedIndex = -1;

  @override
  Widget build(BuildContext context) {
    int length = widget.monthWiseAvgRepairStats?.xLabels?.length ?? 0;
    int lengthY = widget.monthWiseAvgRepairStats?.y?.length ?? 0;

    final theme = Theme.of(context).textTheme;

    return Column(
      children: [
        Text(
          widget.title,
          style: theme.titleLarge?.copyWith(
            color: AppColors.primary,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        AspectRatio(
          aspectRatio: 1.3,
          child: Row(
            children: <Widget>[
              const SizedBox(
                height: 18,
              ),
              Expanded(
                child: AspectRatio(
                  aspectRatio: 1,
                  child: PieChart(
                    PieChartData(
                      pieTouchData: PieTouchData(
                        touchCallback: (FlTouchEvent event, pieTouchResponse) {
                          if (!event.isInterestedForInteractions ||
                              pieTouchResponse == null ||
                              pieTouchResponse.touchedSection == null) {
                            touchedIndex = -1;
                            return;
                          }

                          var ri = -1;
                          for (var i = 0; i < length; i++) {
                            final value =
                                widget.monthWiseAvgRepairStats?.y?[i].toInt() ??
                                    0;
                            final valueX =
                                widget.monthWiseAvgRepairStats?.xLabels?[i] ??
                                    "";

                            final title = '$value $valueX';
                            if (pieTouchResponse
                                    .touchedSection?.touchedSection?.title ==
                                title) {
                              ri = i;
                            }
                          }
                          setState(() {
                            log("touchedIndex $ri");
                            touchedIndex = ri;
                          });
                        },
                      ),
                      borderData: FlBorderData(
                        show: false,
                      ),
                      sectionsSpace: 0,
                      centerSpaceRadius: 50,
                      sections: showingSections(lengthY),
                    ),
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  for (var i = 0; i < length; i++)
                    Indicator(
                      color: getPieChartColor(i),
                      text: widget.monthWiseAvgRepairStats?.xLabels?[i] ?? "",
                      isSquare: true,
                    ),
                ],
              ),
              const SizedBox(
                width: 24,
              ),
            ],
          ),
        ),
      ],
    );
  }

  List<PieChartSectionData> showingSections(int length) {
    final theme = Theme.of(context).textTheme;

    return List.generate(length, (i) {
      final isTouched = i == touchedIndex;
      final value = widget.monthWiseAvgRepairStats?.y?[i].toInt() ?? 0;
      final valueX = widget.monthWiseAvgRepairStats?.xLabels?[i] ?? "";
      final fontSize = isTouched ? 25.0 : 12.0;
      final radius = isTouched ? 100.0 : 80.0;
      const shadows = [Shadow(color: Colors.black, blurRadius: 2)];

      int sum = sumUsingReduce(widget.monthWiseAvgRepairStats?.y ?? []);

      final perValue = value / sum * 100;

      return PieChartSectionData(
        color: getPieChartColor(i),
        value: perValue,
        title: '$value $valueX',
        radius: radius,
        titleStyle: theme.bodyMedium?.copyWith(
          fontSize: fontSize,
          shadows: shadows,
        ),
      );
    });
  }

  int sumUsingReduce(List<int> numbers) {
    return numbers.reduce((value, element) => value + element);
  }

  Color getPieChartColor(int index) {
    switch (index) {
      case 0:
        return AppColors.surfaceColor;
      case 1:
        return AppColors.contentColorYellow;
      case 2:
        return AppColors.contentColorOrange;
      case 3:
        return AppColors.contentColorGreen;
      case 4:
        return AppColors.contentColorPurple;
      case 5:
        return AppColors.contentColorPink;
      case 6:
        return AppColors.surfaceColorLight;
      case 7:
        return AppColors.contentColorIndigo;
      case 8:
        return AppColors.contentColorTeal;
      case 9:
        return AppColors.warningColor;
      case 10:
        return AppColors.contentColorDeepOrange;
      case 11:
        return AppColors.surfaceSecondaryColor;
      case 12:
        return AppColors.contentColorDeepPurple;
      default:
        return AppColors.contentColorBlack;
    }
  }
}
