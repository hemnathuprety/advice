import 'package:equatable/equatable.dart';

class BridgeCloserHistoryEntity extends Equatable {
  final String? id;
  final String? dateCreated;
  final String? districtId;
  final String? latitude;
  final String? longitude;
  final String? roadName;
  final String? closureReason;
  final String? repairEta;
  final String? createdByUserId;
  final String? lastUpdatedByUserId;
  final String? startDate;
  final String? estimatedEndDate;
  final String? endDate;
  final String? closureType;
  final String? actualRepairTime;
  final String? damageType;
  final String? createdByUserName;
  final String? lastUpdatedByUserName;

  const BridgeCloserHistoryEntity({
    required this.id,
    required this.dateCreated,
    required this.districtId,
    required this.latitude,
    required this.longitude,
    required this.roadName,
    required this.closureReason,
    required this.repairEta,
    required this.createdByUserId,
    required this.lastUpdatedByUserId,
    required this.startDate,
    required this.estimatedEndDate,
    required this.endDate,
    required this.closureType,
    required this.actualRepairTime,
    required this.damageType,
    required this.createdByUserName,
    required this.lastUpdatedByUserName,
  });

  @override
  List<Object?> get props => [];
}
