import 'package:advice/sections/dashboard/domain/entities/month_wise_stats_entity.dart';

class MonthWiseStatsModel extends MonthWiseStatsEntity {
  const MonthWiseStatsModel({required super.xLabels, required super.y});

  factory MonthWiseStatsModel.fromJson(Map<String, dynamic> json) =>
      MonthWiseStatsModel(
        xLabels: json['x_labels'].cast<String>(),
        y: json['y'].cast<int>(),
      );
}
