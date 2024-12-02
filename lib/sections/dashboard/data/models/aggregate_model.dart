import 'package:advice/sections/dashboard/domain/entities/aggregate_stats.dart';

class AggregateStatsModel extends AggregateStatsEntity {
  const AggregateStatsModel({
    required super.totalClosures,
    required super.avgRepairEta,
    required super.avgRepairActual,
  });

  factory AggregateStatsModel.fromJson(Map<String, dynamic> json) =>
      AggregateStatsModel(
        totalClosures: json["total_closures"],
        avgRepairEta: json["avg_repair_eta"],
        avgRepairActual: json["avg_repair_actual"],
      );
}
