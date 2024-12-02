import 'package:advice/sections/advisory/domain/entities/districts_entity.dart';

class DistrictsModel extends DistrictsEntity {
  const DistrictsModel({
    required super.districtsEntity,
  });

  factory DistrictsModel.fromJson(Map<String, dynamic> json) {
    var data = <DistrictsDataModel>[];
    if (json['data'] != null) {
      json['data'].forEach((v) {
        data.add(DistrictsDataModel.fromJson(v));
      });
    }

    return DistrictsModel(districtsEntity: data);
  }
}

class DistrictsDataModel extends DistrictsData {
  const DistrictsDataModel({
    required super.districtId,
    required super.districtName,
    required super.provinceId,
  });

  factory DistrictsDataModel.fromJson(Map<String, dynamic> json) =>
      DistrictsDataModel(
        districtId: json['district_id'],
        districtName: json['district_name'],
        provinceId: json['province_id'],
      );
}
