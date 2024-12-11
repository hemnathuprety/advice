// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'locations_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LocationsModelImpl _$$LocationsModelImplFromJson(Map<String, dynamic> json) =>
    _$LocationsModelImpl(
      district: json['district'] == null
          ? null
          : Districts.fromJson(json['district'] as Map<String, dynamic>),
      province: json['province'] == null
          ? null
          : ProvinceModel.fromJson(json['province'] as Map<String, dynamic>),
      municipality: json['municipality'] == null
          ? null
          : MunicipalityModel.fromJson(
              json['municipality'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LocationsModelImplToJson(
        _$LocationsModelImpl instance) =>
    <String, dynamic>{
      'district': instance.district,
      'province': instance.province,
      'municipality': instance.municipality,
    };
