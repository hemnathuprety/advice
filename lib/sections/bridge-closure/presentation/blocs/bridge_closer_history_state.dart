part of 'bridge_closer_history_bloc.dart';


class BridgeCloserHistoryState extends Equatable {
  const BridgeCloserHistoryState({
    this.statsEntity = const <BridgeCloserHistoryEntity>[],
    this.status = ViewStatus.initial,
    this.hasReachedMax = false,
    this.pageIndex = 1,
    this.totalRows = 10,
    this.error = "",
  });

  final List<BridgeCloserHistoryEntity> statsEntity;
  final int totalRows;

  final ViewStatus status;
  final bool hasReachedMax;
  final int pageIndex;
  final String error;

  BridgeCloserHistoryState copyWith({
    ViewStatus? status,
    List<BridgeCloserHistoryEntity>? statsEntity,
    bool? hasReachedMax,
    int? pageIndex,
    int? nextPageIndex,
    int? totalRows,
    String? error,
  }) {
    return BridgeCloserHistoryState(
      status: status ?? this.status,
      statsEntity: statsEntity ?? this.statsEntity,
      totalRows: totalRows ?? this.totalRows,
      hasReachedMax: hasReachedMax ?? this.hasReachedMax,
      pageIndex: pageIndex ?? this.pageIndex,
      error: error ?? this.error,
    );
  }

  @override
  List<Object> get props => [statsEntity, totalRows, status, pageIndex, error];
}
