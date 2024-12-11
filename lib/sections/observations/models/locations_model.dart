import 'package:advice/sections/observations/models/districts_model.dart';
import 'package:advice/sections/observations/models/municipality_model.dart';
import 'package:advice/sections/observations/models/province_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'locations_model.freezed.dart';
part 'locations_model.g.dart';

@freezed
class LocationsModel with _$LocationsModel {
  const factory LocationsModel({
    @JsonKey(name: 'district') Districts? district,
    @JsonKey(name: 'province') ProvinceModel? province,
    @JsonKey(name: 'municipality') MunicipalityModel? municipality,
  }) = _LocationsModel;

  factory LocationsModel.fromJson(Map<String, Object?> json) => _$LocationsModelFromJson(json);
}

