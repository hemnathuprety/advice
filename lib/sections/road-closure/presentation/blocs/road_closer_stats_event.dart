part of 'road_closer_stats_bloc.dart';

sealed class RoadCloserStatsEvent extends Equatable {
  const RoadCloserStatsEvent();

  @override
  List<Object> get props => [];
}


class GetRoadCloserStatsEvent extends RoadCloserStatsEvent {
  final String year;

  const GetRoadCloserStatsEvent({required this.year});

  @override
  List<Object> get props => [year];
}
