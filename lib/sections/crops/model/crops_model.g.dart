// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'crops_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CropsModelImpl _$$CropsModelImplFromJson(Map<String, dynamic> json) =>
    _$CropsModelImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$CropsModelImplToJson(_$CropsModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
    };
