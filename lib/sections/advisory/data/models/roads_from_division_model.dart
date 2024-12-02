import 'package:advice/sections/advisory/domain/entities/roads_from_division_entity.dart';

class RoadsFromDivisionModel extends RoadsFromDivisionEntity {
  const RoadsFromDivisionModel({super.data});

  factory RoadsFromDivisionModel.fromJson(Map<String, dynamic> json) {
    var data = <RoadsFromDivisionDataModel>[];
    if (json['data'] != null) {
      json['data'].forEach((v) {
        data.add(RoadsFromDivisionDataModel.fromJson(v));
      });
    }

    return RoadsFromDivisionModel(data: data);
  }
}

class RoadsFromDivisionDataModel extends RoadsFromDivisionDataEntity {
  const RoadsFromDivisionDataModel({
    super.roadRefno,
    super.roadName,
    super.linkCode,
    super.linkName,
    super.distName,
    super.divName,
  });

  factory RoadsFromDivisionDataModel.fromJson(Map<String, dynamic> json) =>
      RoadsFromDivisionDataModel(
        roadRefno: json['road_refno'],
        roadName: json['road_name'],
        linkCode: json['link_code'],
        linkName: json['link_name'],
        distName: json['dist_name'],
        divName: json['div_name'],
      );
}
