import 'package:advice/sections/advisory/data/models/advisory_alert_model.dart';
import 'package:advice/sections/bridge-closure/data/models/bridge_closer_history_data_model.dart';
import 'package:advice/sections/road-closure/domain/entities/road_closer_history_data.dart';
import 'package:equatable/equatable.dart';

class DashboardAlertsEntity extends Equatable {
  final RoadCloserHistoryData? roadClosureEntity;
  final BridgeCloserHistoryDataModel? bridgeClosureEntity;
  final AdvisoryAlertModel? flashFloodEntity;
  final AdvisoryAlertModel? rainfallEntity;
  final AdvisoryAlertModel? recentlyOpenedEntity;

  const DashboardAlertsEntity({
    required this.roadClosureEntity,
    required this.bridgeClosureEntity,
    required this.flashFloodEntity,
    required this.rainfallEntity,
    required this.recentlyOpenedEntity,
  });

  @override
  List<Object?> get props => [
        roadClosureEntity,
        bridgeClosureEntity,
        flashFloodEntity,
        rainfallEntity,
        recentlyOpenedEntity
      ];
}
