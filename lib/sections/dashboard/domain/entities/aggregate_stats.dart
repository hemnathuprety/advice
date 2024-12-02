import 'package:equatable/equatable.dart';

class AggregateStatsEntity extends Equatable {
  final String? totalClosures;
  final String? avgRepairEta;
  final String? avgRepairActual;

  const AggregateStatsEntity({
    this.totalClosures,
    this.avgRepairEta,
    this.avgRepairActual,
  });

  @override
  List<Object?> get props => [totalClosures, avgRepairEta, avgRepairActual];
}
