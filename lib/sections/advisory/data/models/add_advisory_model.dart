import 'package:equatable/equatable.dart';

class AddAdvisoryModel extends Equatable {
  final String? roadRefno;
  final String? roadName;
  final String? district;
  final String? contactPerson;
  final String? effortsBeingMade;
  final String? remarks;
  final String? latitude;
  final String? longitude;
  final String? closureReason;
  final String? dateRoadblockStart;
  final String? dateRoadblockEndEstimated;
  final String? dateRoadblockEnd;
  final String? closureType;
  final String? chainage;
  final String? division;
  final String? linkCode;

  const AddAdvisoryModel({
    this.roadRefno,
    this.roadName,
    this.district,
    this.contactPerson,
    this.effortsBeingMade,
    this.remarks,
    this.latitude,
    this.longitude,
    this.closureReason,
    this.dateRoadblockStart,
    this.dateRoadblockEndEstimated,
    this.dateRoadblockEnd,
    this.closureType,
    this.chainage,
    this.division,
    this.linkCode,
  });

  factory AddAdvisoryModel.fromJson(Map<String, dynamic> json) =>
      AddAdvisoryModel(
        roadRefno: json['road_refno'],
        roadName: json['road_name'],
        district: json['district'],
        contactPerson: json['contact_person'],
        effortsBeingMade: json['efforts_being_made'],
        remarks: json['remarks'],
        latitude: json['latitude'],
        longitude: json['longitude'],
        closureReason: json['closure_reason'],
        dateRoadblockStart: json['date_roadblock_start'],
        dateRoadblockEndEstimated: json['date_roadblock_end_estimated'],
        dateRoadblockEnd: json['date_roadblock_end'],
        closureType: json['closure_type'],
        chainage: json['chainage'],
        division: json['division'],
        linkCode: json['link_code'],
      );

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['road_refno'] = roadRefno;
    data['road_name'] = roadName;
    data['district'] = district;
    data['contact_person'] = contactPerson;
    data['efforts_being_made'] = effortsBeingMade;
    data['remarks'] = remarks;
    data['latitude'] = latitude;
    data['longitude'] = longitude;
    data['closure_reason'] = closureReason;
    data['date_roadblock_start'] = dateRoadblockStart;
    data['date_roadblock_end_estimated'] = dateRoadblockEndEstimated;
    data['date_roadblock_end'] = dateRoadblockEnd;
    data['closure_type'] = closureType;
    data['chainage'] = chainage;
    data['division'] = division;
    data['link_code'] = linkCode;
    return data;
  }

  @override
  List<Object?> get props => [];
}
