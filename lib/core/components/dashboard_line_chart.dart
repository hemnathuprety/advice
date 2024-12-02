import 'dart:developer';

import 'package:advice/themes/color_extensions.dart';
import 'package:advice/sections/dashboard/domain/entities/month_wise_stats_entity.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class DashboardLineChartItem extends StatelessWidget {
  const DashboardLineChartItem({
    super.key,
    required this.monthWiseAvgRepairStats,
    required this.theme,
  });

  final MonthWiseStatsEntity? monthWiseAvgRepairStats;

  final TextTheme theme;

  @override
  Widget build(BuildContext context) {
    return LineChart(
      chartData,
      duration: const Duration(milliseconds: 250),
    );
  }

  LineChartData get chartData => LineChartData(
        lineTouchData: lineTouchData,
        gridData: gridData,
        titlesData: titlesData,
        borderData: borderData,
        lineBarsData: lineBarsData,
        minX: 0,
        maxX: 11,
        maxY: getDataMax(monthWiseAvgRepairStats),
        minY: 0,
      );

  LineTouchData get lineTouchData => LineTouchData(
        handleBuiltInTouches: true,
        touchTooltipData: LineTouchTooltipData(
          getTooltipColor: (touchedSpot) => Colors.blueGrey.withOpacity(0.8),
        ),
      );

  FlTitlesData get titlesData => FlTitlesData(
        bottomTitles: AxisTitles(
          sideTitles: bottomTitles,
        ),
        rightTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        leftTitles: AxisTitles(
          sideTitles: leftTitles(),
        ),
      );

  List<LineChartBarData> get lineBarsData => [
        lineChartBarData,
      ];

  Widget leftTitleWidgets(double value, TitleMeta meta) {
    String text;
    log("max: ${value.toInt()}");
    if (value % 10000 == 0) {
      var title = value.toInt() / 1000;
      text = "${title.toInt()}K";
    } else {
      return Container();
    }

    return Text(text, style: theme.bodyMedium, textAlign: TextAlign.center);//todo
  }

  SideTitles leftTitles() => SideTitles(
        getTitlesWidget: leftTitleWidgets,
        showTitles: true,
        interval: 10000,
        reservedSize: 40,
      );

  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    String text = "";

    if (monthWiseAvgRepairStats!.xLabels!.length > value.toInt()) {
      text = monthWiseAvgRepairStats?.xLabels![value.toInt()] ?? "";
    }

    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: Text(text, style: theme.bodyMedium),
    );
  }

  SideTitles get bottomTitles => SideTitles(
        showTitles: true,
        reservedSize: 32,
        interval: 1,
        getTitlesWidget: bottomTitleWidgets,
      );

  FlGridData get gridData => const FlGridData(show: false);

  FlBorderData get borderData => FlBorderData(
        show: true,
        border: Border(
          bottom:
              BorderSide(color: AppColors.primary.withOpacity(0.2), width: 4),
          left: const BorderSide(color: Colors.transparent),
          right: const BorderSide(color: Colors.transparent),
          top: const BorderSide(color: Colors.transparent),
        ),
      );

  LineChartBarData get lineChartBarData => LineChartBarData(
        isCurved: false,
        color: AppColors.primary,
        barWidth: 8,
        isStrokeCapRound: true,
        dotData: const FlDotData(show: false),
        belowBarData: BarAreaData(show: false),
        spots: getData(monthWiseAvgRepairStats),
      );

  List<FlSpot> getData(MonthWiseStatsEntity? monthWiseStatsEntity) {
    List<FlSpot> flSpot = [];
    var length = monthWiseStatsEntity?.y?.length ?? 0;
    if (monthWiseStatsEntity?.y != null) {
      for (var i = 0; i < length; i++) {
        var valueY = monthWiseStatsEntity?.y?[i] ?? 0;
        FlSpot data = FlSpot(i.toDouble(), valueY.toDouble());

        flSpot.add(data);
      }
    }
    return flSpot;
  }

  double getDataMax(MonthWiseStatsEntity? monthWiseStatsEntity) {
    var flMaXData = 0.0;
    var length = monthWiseStatsEntity?.y?.length ?? 0;
    if (monthWiseStatsEntity?.y != null) {
      for (var i = 0; i < length; i++) {
        var valueY = monthWiseStatsEntity?.y?[i] ?? 0;
        if (flMaXData < valueY.toDouble()) {
          flMaXData = valueY.toDouble();
        }
      }
    }
    log("max: $flMaXData");
    return flMaXData;
  }
}

class DashboardLineChart extends StatefulWidget {
  const DashboardLineChart({
    super.key,
    required this.monthWiseAvgRepairStats,
    required this.title,
  });

  final MonthWiseStatsEntity? monthWiseAvgRepairStats;
  final String title;

  @override
  State<StatefulWidget> createState() => LineChartState();
}

class LineChartState extends State<DashboardLineChart> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return AspectRatio(
      aspectRatio: 1.23,
      child: Stack(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const SizedBox(
                height: 37,
              ),
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
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(right: 16, left: 6),
                  child: DashboardLineChartItem(
                    monthWiseAvgRepairStats: widget.monthWiseAvgRepairStats,
                    theme: theme,
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
