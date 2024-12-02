part of 'bridge_closer_stats_bloc.dart';

sealed class BridgeCloserStatsEvent extends Equatable {
  const BridgeCloserStatsEvent();

  @override
  List<Object> get props => [];
}


class GetBridgeCloserStatsEvent extends BridgeCloserStatsEvent {
  final String year;

  const GetBridgeCloserStatsEvent({required this.year});

  @override
  List<Object> get props => [year];
}
