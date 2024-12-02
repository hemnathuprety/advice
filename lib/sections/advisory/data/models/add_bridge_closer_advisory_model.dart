import 'package:equatable/equatable.dart';

class AddBridgeCloserAdvisoryModel extends Equatable {
  final String? districtId;
  final String? roadName;
  final String? contactPerson;
  final String? latitude;
  final String? longitude;
  final String? startDate;
  final String? estimatedEndDate;
  final String? endDate;
  final String? closureType;
  final String? damageType;
  final String? closureReason;

  const AddBridgeCloserAdvisoryModel({
    this.districtId,
    this.roadName,
    this.contactPerson,
    this.latitude,
    this.longitude,
    this.closureReason,
    this.startDate,
    this.estimatedEndDate,
    this.endDate,
    this.closureType,
    this.damageType,
  });

  factory AddBridgeCloserAdvisoryModel.fromJson(Map<String, dynamic> json) =>
      AddBridgeCloserAdvisoryModel(
        districtId: json['district_id'],
        roadName: json['road_name'],
        contactPerson: json['contact_person'],
        latitude: json['latitude'],
        longitude: json['longitude'],
        closureReason: json['closure_reason'],
        startDate: json['start_date'],
        estimatedEndDate: json['estimated_end_date'],
        endDate: json['end_date'],
        closureType: json['closure_type'],
        damageType: json['damage_type'],
      );

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['district_id'] = districtId;
    data['road_name'] = roadName;
   /*data['contact_person'] = contactPerson;*/
    data['latitude'] = latitude;
    data['longitude'] = longitude;
    data['closure_reason'] = closureReason;
    data['start_date'] = startDate;
    data['estimated_end_date'] = estimatedEndDate;
    data['end_date'] = endDate;
    data['closure_type'] = closureType;
    data['damage_type'] = damageType;
    return data;
  }

  @override
  List<Object?> get props => [];
}
