part of 'road_closer_history_bloc.dart';

class RoadCloserHistoryState extends Equatable {
  const RoadCloserHistoryState({
    this.statsEntity = const <RoadCloserHistoryEntity>[],
    this.status = ViewStatus.initial,
    this.hasReachedMax = false,
    this.pageIndex = 1,
    this.totalRows = 10,
    this.error = "",
  });

  final List<RoadCloserHistoryEntity> statsEntity;
  final int totalRows;

  final ViewStatus status;
  final bool hasReachedMax;
  final int pageIndex;
  final String error;

  RoadCloserHistoryState copyWith({
    ViewStatus? status,
    List<RoadCloserHistoryEntity>? statsEntity,
    bool? hasReachedMax,
    int? pageIndex,
    int? nextPageIndex,
    int? totalRows,
    String? error,
  }) {
    return RoadCloserHistoryState(
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
