// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'advisory_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AdvisoryModelImpl _$$AdvisoryModelImplFromJson(Map<String, dynamic> json) =>
    _$AdvisoryModelImpl(
      advisoryStartDate: json['advisory_start_date'] as String?,
      advisoryEndDate: json['advisory_end_date'] as String?,
      crop: json['crop'] == null
          ? null
          : Crop.fromJson(json['crop'] as Map<String, dynamic>),
      pestAlerts: json['pest_alerts'] as bool?,
      color: json['color'] as String?,
      pdf: json['pdf'] as String?,
      observationSummary: json['observation_summary'] as String?,
    );

Map<String, dynamic> _$$AdvisoryModelImplToJson(_$AdvisoryModelImpl instance) =>
    <String, dynamic>{
      'advisory_start_date': instance.advisoryStartDate,
      'advisory_end_date': instance.advisoryEndDate,
      'crop': instance.crop,
      'pest_alerts': instance.pestAlerts,
      'color': instance.color,
      'pdf': instance.pdf,
      'observation_summary': instance.observationSummary,
    };

_$CropImpl _$$CropImplFromJson(Map<String, dynamic> json) => _$CropImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$CropImplToJson(_$CropImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
