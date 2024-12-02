import 'package:advice/sections/dashboard/domain/entities/aggregate_stats.dart';
import 'package:advice/sections/dashboard/domain/entities/month_wise_stats_entity.dart';
import 'package:equatable/equatable.dart';

class RoadCloserStatsEntity extends Equatable {
  final AggregateStatsEntity? aggregateStatsEntity;
  final MonthWiseStatsEntity? monthWiseStatsEntity;
  final MonthWiseStatsEntity? monthWiseAvgRepairStats;
  final MonthWiseStatsEntity? districtWiseStats;
  final MonthWiseStatsEntity? roadWiseStats;

  const RoadCloserStatsEntity({
    required this.aggregateStatsEntity,
    required this.monthWiseStatsEntity,
    required this.monthWiseAvgRepairStats,
    required this.districtWiseStats,
    required this.roadWiseStats,
  });

  @override
  List<Object?> get props => [
        aggregateStatsEntity,
        monthWiseStatsEntity,
        monthWiseStatsEntity,
        districtWiseStats,
        roadWiseStats
      ];
}
