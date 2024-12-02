part of 'bridge_closer_stats_bloc.dart';


sealed class BridgeCloserStatsState  extends Equatable  {
  const BridgeCloserStatsState();

  @override
  List<Object> get props => [];
}

final class BridgeCloserStatsInitial extends BridgeCloserStatsState {}

class BridgeCloserStatsLoading extends BridgeCloserStatsState {
  @override
  List<Object> get props => [];
}

class BridgeCloserStatsSuccess extends BridgeCloserStatsState {
  final BridgeCloserStatsEntity statsEntity;

  const BridgeCloserStatsSuccess({required this.statsEntity});

  @override
  List<Object> get props => [statsEntity];
}

class BridgeCloserStatsFailed extends BridgeCloserStatsState {
  final String errorMessage;

  const BridgeCloserStatsFailed({required this.errorMessage});

  @override
  List<Object> get props => [errorMessage];
}
