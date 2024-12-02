import 'package:advice/sections/bridge-closure/domain/entities/bridge_closer_history_entity.dart';

class BridgeCloserHistoryModel extends BridgeCloserHistoryEntity {
  const BridgeCloserHistoryModel(
      {required super.id,
      required super.dateCreated,
      required super.districtId,
      required super.latitude,
      required super.longitude,
      required super.roadName,
      required super.closureReason,
      required super.repairEta,
      required super.createdByUserId,
      required super.lastUpdatedByUserId,
      required super.startDate,
      required super.estimatedEndDate,
      required super.endDate,
      required super.closureType,
      required super.actualRepairTime,
      required super.damageType,
      required super.createdByUserName,
      required super.lastUpdatedByUserName});

  factory BridgeCloserHistoryModel.fromJson(Map<String, dynamic> json) =>
      BridgeCloserHistoryModel(
        id: json['id'],
        dateCreated: json['date_created'],
        districtId: json['district_id'],
        latitude: json['latitude'],
        longitude: json['longitude'],
        roadName: json['road_name'],
        closureReason: json['closure_reason'],
        repairEta: json['repair_eta'],
        createdByUserId: json['created_by_user_id'],
        lastUpdatedByUserId: json['last_updated_by_user_id'],
        startDate: json['start_date'],
        estimatedEndDate: json['estimated_end_date'],
        endDate: json['end_date'],
        closureType: json['closure_type'],
        actualRepairTime: json['actual_repair_time'],
        damageType: json['damage_type'],
        createdByUserName: json['created_by_user_name'],
        lastUpdatedByUserName: json['last_updated_by_user_name'],
      );
}
