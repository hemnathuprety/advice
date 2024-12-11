// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'districts_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DistrictsModelImpl _$$DistrictsModelImplFromJson(Map<String, dynamic> json) =>
    _$DistrictsModelImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      districts: (json['districts'] as List<dynamic>?)
          ?.map((e) => Districts.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DistrictsModelImplToJson(
        _$DistrictsModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'districts': instance.districts,
    };

_$DistrictsImpl _$$DistrictsImplFromJson(Map<String, dynamic> json) =>
    _$DistrictsImpl(
      id: (json['id'] as num?)?.toInt(),
      province: json['province'] == null
          ? null
          : ProvinceModel.fromJson(json['province'] as Map<String, dynamic>),
      name: json['name'] as String?,
      administrativeId: (json['administrative_id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$DistrictsImplToJson(_$DistrictsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'province': instance.province,
      'name': instance.name,
      'administrative_id': instance.administrativeId,
    };
