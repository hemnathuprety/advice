import 'package:equatable/equatable.dart';

class RoadCloserHistoryEntity extends Equatable {
  final String? id;
  final String? dateCreated;
  final String? latitude;
  final String? longitude;
  final String? roadName;
  final String? closureReason;
  final String? repairEta;
  final String? roadRefno;
  final String? contactPerson;
  final String? effortsBeingMade;
  final String? remarks;
  final String? district;
  final String? actualRepairTime;
  final String? dateRoadblockStart;
  final String? dateRoadblockEndEstimated;
  final String? dateRoadblockEnd;
  final String? createdByUserId;
  final String? lastUpdatedByUserId;
  final String? closureType;
  final String? chainage;
  final String? linkCode;
  final String? createdByUserName;
  final String? lastUpdatedByUserName;
  final List<String>? images;

  const RoadCloserHistoryEntity({
    required this.id,
    required this.dateCreated,
    required this.latitude,
    required this.longitude,
    required this.roadName,
    required this.closureReason,
    required this.repairEta,
    required this.roadRefno,
    required this.contactPerson,
    required this.effortsBeingMade,
    required this.remarks,
    required this.district,
    required this.actualRepairTime,
    required this.dateRoadblockStart,
    required this.dateRoadblockEndEstimated,
    required this.dateRoadblockEnd,
    required this.createdByUserId,
    required this.lastUpdatedByUserId,
    required this.closureType,
    required this.chainage,
    required this.linkCode,
    required this.createdByUserName,
    required this.lastUpdatedByUserName,
    required this.images,
  });

  @override
  List<Object?> get props => [];
}
