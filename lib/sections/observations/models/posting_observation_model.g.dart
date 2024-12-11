// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'posting_observation_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostingObservationModelImpl _$$PostingObservationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PostingObservationModelImpl(
      crop: json['crop'] as String?,
      stages: json['stages'] as String?,
      observedCondition: json['observedCondition'] as String?,
      specificCondition: json['specificCondition'] as String?,
      dateObserved: json['date_observed'] as String?,
      waterResource: json['waterResource'] as String?,
      province: json['province'] as String?,
      district: json['district'] as String?,
      municipality: json['municipality'] as String?,
      lat: json['lat'] as String?,
      lon: json['lon'] as String?,
      image: json['image'] as String?,
      group: json['group'] as String?,
      managementPractices: json['management_practices'] as String?,
      pests: json['pests'] as String?,
      unverifiedPests: json['unverified_pests'] as String?,
      unverifiedDisease: json['unverified_disease'] as String?,
      unverifiedManagementPractices:
          json['unverified_management_practices'] as String?,
    );

Map<String, dynamic> _$$PostingObservationModelImplToJson(
        _$PostingObservationModelImpl instance) =>
    <String, dynamic>{
      'crop': instance.crop,
      'stages': instance.stages,
      'observedCondition': instance.observedCondition,
      'specificCondition': instance.specificCondition,
      'date_observed': instance.dateObserved,
      'waterResource': instance.waterResource,
      'province': instance.province,
      'district': instance.district,
      'municipality': instance.municipality,
      'lat': instance.lat,
      'lon': instance.lon,
      'image': instance.image,
      'group': instance.group,
      'management_practices': instance.managementPractices,
      'pests': instance.pests,
      'unverified_pests': instance.unverifiedPests,
      'unverified_disease': instance.unverifiedDisease,
      'unverified_management_practices': instance.unverifiedManagementPractices,
    };
