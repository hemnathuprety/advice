// To parse this JSON data, do
//
//     final cropDetail = cropDetailFromMap(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';

part 'crop_detail.freezed.dart';
part 'crop_detail.g.dart';

@freezed
class CropDetail with _$CropDetail {
  const factory CropDetail({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "image") String? image,
    @JsonKey(name: "remarks") dynamic remarks,
    @JsonKey(name: "stages") List<Stage>? stages,
    @JsonKey(name: "management_practices")
    List<ManagementPractice>? managementPractices,
    @JsonKey(name: "varieties") List<Variety>? varieties,
    @JsonKey(name: "potential_pests") List<PotentialPest>? potentialPests,
  }) = _CropDetail;

  factory CropDetail.fromJson(Map<String, dynamic> json) =>
      _$CropDetailFromJson(json);
}

@freezed
class ManagementPractice with _$ManagementPractice {
  const factory ManagementPractice({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "description") dynamic description,
    @JsonKey(name: "startDate") DateTime? startDate,
    @JsonKey(name: "endDate") DateTime? endDate,
  }) = _ManagementPractice;

  factory ManagementPractice.fromJson(Map<String, dynamic> json) =>
      _$ManagementPracticeFromJson(json);
}

@freezed
class PotentialPest with _$PotentialPest {
  const factory PotentialPest({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "image_url") String? imageUrl,
    @JsonKey(name: "scientific_name") String? scientificName,
    @JsonKey(name: "chemical_treatment") String? chemicalTreatment,
    @JsonKey(name: "control_method") String? controlMethod,
    @JsonKey(name: "category") int? category,
    @JsonKey(name: "regions") List<dynamic>? regions,
  }) = _PotentialPest;

  factory PotentialPest.fromJson(Map<String, dynamic> json) =>
      _$PotentialPestFromJson(json);
}

@freezed
class Stage with _$Stage {
  const factory Stage({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "management_practices")
    List<ManagementPractice>? managementPractices,
    @JsonKey(name: "potential_pests") List<dynamic>? potentialPests,
    @JsonKey(name: "variety") dynamic variety,
    @JsonKey(name: "crop") int? crop,
    @JsonKey(name: "major_stage") dynamic majorStage,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "description") String? description,
    @JsonKey(name: "duration_days") String? durationDays,
    @JsonKey(name: "imagesList") List<dynamic>? imagesList,
    @JsonKey(name: "startDate") DateTime? startDate,
    @JsonKey(name: "endDate") DateTime? endDate,
  }) = _Stage;

  factory Stage.fromJson(Map<String, dynamic> json) => _$StageFromJson(json);
}

@freezed
class Variety with _$Variety {
  const factory Variety({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "description") dynamic description,
    @JsonKey(name: "recommended_year") dynamic recommendedYear,
    @JsonKey(name: "production_capacity") dynamic productionCapacity,
    @JsonKey(name: "days_to_maturity") dynamic daysToMaturity,
    @JsonKey(name: "variety_types") List<dynamic>? varietyTypes,
    @JsonKey(name: "recommended_regions") List<dynamic>? recommendedRegions,
    @JsonKey(name: "resistant_pests") List<dynamic>? resistantPests,
    @JsonKey(name: "is_approved") bool? isApproved,
    @JsonKey(name: "is_denotified") bool? isDenotified,
    @JsonKey(name: "denotify_reasons") String? denotifyReasons,
  }) = _Variety;

  factory Variety.fromJson(Map<String, dynamic> json) =>
      _$VarietyFromJson(json);
}
