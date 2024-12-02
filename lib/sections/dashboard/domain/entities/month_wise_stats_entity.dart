import 'package:equatable/equatable.dart';

class MonthWiseStatsEntity extends Equatable {
  final List<String>? xLabels;
  final List<int>? y;

  const MonthWiseStatsEntity({this.xLabels, this.y});

  @override
  List<Object?> get props => [xLabels, y];
}
