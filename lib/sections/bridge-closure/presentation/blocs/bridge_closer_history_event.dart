part of 'bridge_closer_history_bloc.dart';

sealed class BridgeCloserHistoryEvent extends Equatable {
  const BridgeCloserHistoryEvent();

  @override
  List<Object> get props => [];
}

class GetBridgeCloserHistoryEvent extends BridgeCloserHistoryEvent {
  final bool isFiltered;
  final String year;
  final String month;

  const GetBridgeCloserHistoryEvent({
    required this.isFiltered,
    required this.year,
    required this.month,
  });

  @override
  List<Object> get props => [isFiltered, year, month];
}

class DataResetEvent extends BridgeCloserHistoryEvent {
  const DataResetEvent();

  @override
  List<Object> get props => [];
}
