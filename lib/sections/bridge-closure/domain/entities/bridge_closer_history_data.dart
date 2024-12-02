import 'package:advice/sections/bridge-closure/domain/entities/bridge_closer_history_entity.dart';
import 'package:equatable/equatable.dart';

class BridgeCloserHistoryData extends Equatable {
  final List<BridgeCloserHistoryEntity>? data;
  final int? totalRows;

  const BridgeCloserHistoryData({
    required this.data,
    required this.totalRows,
  });

  @override
  List<Object?> get props => [];
}
