// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'crop_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CropDetailImpl _$$CropDetailImplFromJson(Map<String, dynamic> json) =>
    _$CropDetailImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      image: json['image'] as String?,
      remarks: json['remarks'],
      stages: (json['stages'] as List<dynamic>?)
          ?.map((e) => Stage.fromJson(e as Map<String, dynamic>))
          .toList(),
      managementPractices: (json['management_practices'] as List<dynamic>?)
          ?.map((e) => ManagementPractice.fromJson(e as Map<String, dynamic>))
          .toList(),
      varieties: (json['varieties'] as List<dynamic>?)
          ?.map((e) => Variety.fromJson(e as Map<String, dynamic>))
          .toList(),
      potentialPests: (json['potential_pests'] as List<dynamic>?)
          ?.map((e) => PotentialPest.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CropDetailImplToJson(_$CropDetailImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'remarks': instance.remarks,
      'stages': instance.stages,
      'management_practices': instance.managementPractices,
      'varieties': instance.varieties,
      'potential_pests': instance.potentialPests,
    };

_$ManagementPracticeImpl _$$ManagementPracticeImplFromJson(
        Map<String, dynamic> json) =>
    _$ManagementPracticeImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      description: json['description'],
      startDate: json['startDate'] == null
          ? null
          : DateTime.parse(json['startDate'] as String),
      endDate: json['endDate'] == null
          ? null
          : DateTime.parse(json['endDate'] as String),
    );

Map<String, dynamic> _$$ManagementPracticeImplToJson(
        _$ManagementPracticeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'startDate': instance.startDate?.toIso8601String(),
      'endDate': instance.endDate?.toIso8601String(),
    };

_$PotentialPestImpl _$$PotentialPestImplFromJson(Map<String, dynamic> json) =>
    _$PotentialPestImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      imageUrl: json['image_url'] as String?,
      scientificName: json['scientific_name'] as String?,
      chemicalTreatment: json['chemical_treatment'] as String?,
      controlMethod: json['control_method'] as String?,
      category: (json['category'] as num?)?.toInt(),
      regions: json['regions'] as List<dynamic>?,
    );

Map<String, dynamic> _$$PotentialPestImplToJson(_$PotentialPestImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image_url': instance.imageUrl,
      'scientific_name': instance.scientificName,
      'chemical_treatment': instance.chemicalTreatment,
      'control_method': instance.controlMethod,
      'category': instance.category,
      'regions': instance.regions,
    };

_$StageImpl _$$StageImplFromJson(Map<String, dynamic> json) => _$StageImpl(
      id: (json['id'] as num?)?.toInt(),
      managementPractices: (json['management_practices'] as List<dynamic>?)
          ?.map((e) => ManagementPractice.fromJson(e as Map<String, dynamic>))
          .toList(),
      potentialPests: (json['potential_pests'] as List<dynamic>?)
          ?.map((e) => PotentialPest.fromJson(e as Map<String, dynamic>))
          .toList(),
      variety: json['variety'],
      crop: (json['crop'] as num?)?.toInt(),
      majorStage: json['major_stage'],
      name: json['name'] as String?,
      description: json['description'] as String?,
      durationDays: json['duration_days'] as String?,
      imagesList: json['imagesList'] as List<dynamic>?,
      startDate: json['startDate'] == null
          ? null
          : DateTime.parse(json['startDate'] as String),
      endDate: json['endDate'] == null
          ? null
          : DateTime.parse(json['endDate'] as String),
    );

Map<String, dynamic> _$$StageImplToJson(_$StageImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'management_practices': instance.managementPractices,
      'potential_pests': instance.potentialPests,
      'variety': instance.variety,
      'crop': instance.crop,
      'major_stage': instance.majorStage,
      'name': instance.name,
      'description': instance.description,
      'duration_days': instance.durationDays,
      'imagesList': instance.imagesList,
      'startDate': instance.startDate?.toIso8601String(),
      'endDate': instance.endDate?.toIso8601String(),
    };

_$VarietyImpl _$$VarietyImplFromJson(Map<String, dynamic> json) =>
    _$VarietyImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      description: json['description'],
      recommendedYear: json['recommended_year'],
      productionCapacity: json['production_capacity'],
      daysToMaturity: json['days_to_maturity'],
      varietyTypes: json['variety_types'] as List<dynamic>?,
      recommendedRegions: json['recommended_regions'] as List<dynamic>?,
      resistantPests: json['resistant_pests'] as List<dynamic>?,
      isApproved: json['is_approved'] as bool?,
      isDenotified: json['is_denotified'] as bool?,
      denotifyReasons: json['denotify_reasons'] as String?,
    );

Map<String, dynamic> _$$VarietyImplToJson(_$VarietyImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'recommended_year': instance.recommendedYear,
      'production_capacity': instance.productionCapacity,
      'days_to_maturity': instance.daysToMaturity,
      'variety_types': instance.varietyTypes,
      'recommended_regions': instance.recommendedRegions,
      'resistant_pests': instance.resistantPests,
      'is_approved': instance.isApproved,
      'is_denotified': instance.isDenotified,
      'denotify_reasons': instance.denotifyReasons,
    };
