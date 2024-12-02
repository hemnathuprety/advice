import 'dart:developer';

import 'package:advice/sections/dashboard/domain/entities/month_wise_stats_entity.dart';
import 'package:advice/themes/color_extensions.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class DashboardBarChart extends StatefulWidget {
  const DashboardBarChart({
    super.key,
    required this.monthWiseStatsEntity,
    required this.title,
  });

  final MonthWiseStatsEntity? monthWiseStatsEntity;
  final String title;

  @override
  State<StatefulWidget> createState() => DashboardBarChartState();
}

class DashboardBarChartState extends State<DashboardBarChart> {

  Widget bottomTitles(double value, TitleMeta meta) {
    final theme = Theme.of(context).textTheme;
    String text = widget.monthWiseStatsEntity?.xLabels![value.toInt()] ?? "";

    if (widget.monthWiseStatsEntity!.xLabels!.length > 14 || text.length > 4) {
      return SideTitleWidget(
        axisSide: meta.axisSide,
        child: RotatedBox(
            quarterTurns: 3,
            child: Text(
              text,
              style: theme.bodySmall,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            )),
      );
    } else {
      return SideTitleWidget(
        axisSide: meta.axisSide,
        child: Text(text, style: theme.bodySmall),
      );
    }
  }

  Widget leftTitles(double value, TitleMeta meta) {
    final theme = Theme.of(context).textTheme;

    if (value == meta.max) {
      return Container();
    }

    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: Text(
        meta.formattedValue,
        style: theme.bodyMedium,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Column(
      children: [
        Text(
          widget.title,
          style: theme.headlineMedium?.copyWith(
            color: AppColors.primary,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 16,
        ),
        AspectRatio(
          aspectRatio: 1.66,
          child: Padding(
            padding: const EdgeInsets.only(top: 16),
            child: LayoutBuilder(
              builder: (context, constraints) {
                final barsSpace = 8.0 * constraints.maxWidth / 100;
                return BarChart(
                  BarChartData(
                    alignment: BarChartAlignment.center,
                    barTouchData: BarTouchData(
                      enabled: false,
                    ),
                    titlesData: FlTitlesData(
                      show: true,
                      bottomTitles: AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: true,
                          reservedSize: 48,
                          getTitlesWidget: bottomTitles,
                        ),
                      ),
                      leftTitles: AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: true,
                          reservedSize: 40,
                          getTitlesWidget: leftTitles,
                        ),
                      ),
                      topTitles: const AxisTitles(
                        sideTitles: SideTitles(showTitles: false),
                      ),
                      rightTitles: const AxisTitles(
                        sideTitles: SideTitles(showTitles: false),
                      ),
                    ),
                    gridData: FlGridData(
                      show: true,
                      checkToShowHorizontalLine: (value) => value % 10 == 0,
                      getDrawingHorizontalLine: (value) => FlLine(
                        color: AppColors.borderColor.withOpacity(0.1),
                        strokeWidth: 1,
                      ),
                      drawVerticalLine: false,
                    ),
                    borderData: FlBorderData(
                      show: false,
                    ),
                    groupsSpace: barsSpace,
                    barGroups: getData(widget.monthWiseStatsEntity),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }

  List<BarChartGroupData> getData(MonthWiseStatsEntity? monthWiseStatsEntity) {
    List<BarChartGroupData> barChartGroupDataList = [];
    var length = monthWiseStatsEntity?.y?.length ?? 0;
    if (monthWiseStatsEntity?.y != null) {
      for (var i = 0; i < length; i++) {
        var valueY = monthWiseStatsEntity?.y?[i] ?? 0;
        log("$valueY");
        BarChartGroupData data = BarChartGroupData(
          x: i,
          barRods: [
            BarChartRodData(
              toY: valueY.toDouble(),
              borderRadius: BorderRadius.zero,
            ),
          ],
        );

        barChartGroupDataList.add(data);
      }
    }
    return barChartGroupDataList;
  }
}
