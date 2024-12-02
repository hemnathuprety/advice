part of 'road_closer_history_bloc.dart';

sealed class RoadCloserHistoryEvent extends Equatable {
  const RoadCloserHistoryEvent();

  @override
  List<Object> get props => [];
}

class GetRoadCloserHistoryEvent extends RoadCloserHistoryEvent {
  final bool isFiltered;
  final String year;
  final String month;

  const GetRoadCloserHistoryEvent({
    required this.isFiltered,
    required this.year,
    required this.month,
  });

  @override
  List<Object> get props => [isFiltered, year, month];
}

class DataResetEvent extends RoadCloserHistoryEvent {
  const DataResetEvent();

  @override
  List<Object> get props => [];
}
