// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'major_stage.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MajorStageImpl _$$MajorStageImplFromJson(Map<String, dynamic> json) =>
    _$MajorStageImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      description: json['description'],
    );

Map<String, dynamic> _$$MajorStageImplToJson(_$MajorStageImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
    };
