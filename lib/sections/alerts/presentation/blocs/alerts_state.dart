part of 'alerts_bloc.dart';

@immutable
class AlertsState extends Equatable {
  const AlertsState({
    this.status = ViewStatus.initial,
    this.dataEntity = const <dynamic>[],
    this.hasReachedMax = false,
    this.currentTab = 0,
    this.pageIndex = 1,
    this.totalRows = 10,
    this.error = "",
  });

  final List<dynamic> dataEntity;

  final int totalRows;
  final int currentTab;

  final ViewStatus status;
  final bool hasReachedMax;
  final int pageIndex;
  final String error;

  AlertsState copyWith({
    ViewStatus? status,
    List<dynamic>? dataEntity,
    bool? hasReachedMax,
    int? currentTab,
    int? pageIndex,
    int? nextPageIndex,
    int? totalRows,
    String? error,
  }) {
    return AlertsState(
      status: status ?? this.status,
      dataEntity: dataEntity ?? this.dataEntity,
      totalRows: totalRows ?? this.totalRows,
      currentTab: currentTab ?? this.currentTab,
      hasReachedMax: hasReachedMax ?? this.hasReachedMax,
      pageIndex: pageIndex ?? this.pageIndex,
      error: error ?? this.error,
    );
  }

  @override
  List<Object> get props => [totalRows, dataEntity, status, pageIndex, error];
}
