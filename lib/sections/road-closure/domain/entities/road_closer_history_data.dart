import 'package:advice/sections/road-closure/domain/entities/road_closer_history_entity.dart';
import 'package:equatable/equatable.dart';

class RoadCloserHistoryData extends Equatable {
  final List<RoadCloserHistoryEntity>? data;
  final String? totalRows;

  const RoadCloserHistoryData({
    required this.data,
    required this.totalRows,
  });

  @override
  List<Object?> get props => [];
}
