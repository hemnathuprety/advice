part of 'road_closer_stats_bloc.dart';


sealed class RoadCloserStatsState  extends Equatable  {
  const RoadCloserStatsState();

  @override
  List<Object> get props => [];
}

final class RoadCloserStatsInitial extends RoadCloserStatsState {}

class RoadCloserStatsLoading extends RoadCloserStatsState {
  @override
  List<Object> get props => [];
}

class RoadCloserStatsSuccess extends RoadCloserStatsState {
  final RoadCloserStatsEntity statsEntity;

  const RoadCloserStatsSuccess({required this.statsEntity});

  @override
  List<Object> get props => [statsEntity];
}

class RoadCloserStatsFailed extends RoadCloserStatsState {
  final String errorMessage;

  const RoadCloserStatsFailed({required this.errorMessage});

  @override
  List<Object> get props => [errorMessage];
}
