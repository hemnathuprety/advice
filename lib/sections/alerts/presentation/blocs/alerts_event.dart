part of 'alerts_bloc.dart';

@immutable
sealed class AlertsEvent extends Equatable {
  const AlertsEvent();

  @override
  List<Object> get props => [];
}

class GetAlertsDataEvent extends AlertsEvent {
  final int currentTab;

  const GetAlertsDataEvent({
    required this.currentTab,
  });

  @override
  List<Object> get props => [currentTab];
}

class DataResetEvent extends AlertsEvent {
  const DataResetEvent();

  @override
  List<Object> get props => [];
}
