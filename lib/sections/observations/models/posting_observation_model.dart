import 'package:freezed_annotation/freezed_annotation.dart';

part 'posting_observation_model.freezed.dart';
part 'posting_observation_model.g.dart';

@freezed
class PostingObservationModel with _$PostingObservationModel {
  const factory PostingObservationModel({
    @JsonKey(name: 'crop') String? crop,
    @JsonKey(name: 'variety') String? variety,
    @JsonKey(name: 'stages') String? stages,
    @JsonKey(name: 'observedCondition') String? observedCondition,
    @JsonKey(name: 'specificCondition') String? specificCondition,
    @JsonKey(name: 'date_observed') String? dateObserved,
    @JsonKey(name: 'waterResource') String? waterResource,
    @JsonKey(name: 'province') String? province,
    @JsonKey(name: 'district') String? district,
    @JsonKey(name: 'municipality') String? municipality,
    @JsonKey(name: 'lat') String? lat,
    @JsonKey(name: 'lon') String? lon,
    @JsonKey(name: 'image') String? image,
    @JsonKey(name: 'group') String? group,
    @JsonKey(name: 'management_practices') String? managementPractices,
    @JsonKey(name: 'pests') String? pests,
    @JsonKey(name: 'unverified_pests') String? unverifiedPests,
    @JsonKey(name: 'unverified_disease') String? unverifiedDisease,
    @JsonKey(name: 'unverified_management_practices') String? unverifiedManagementPractices,
  }) = _PostingObservationModel;

  factory PostingObservationModel.fromJson(Map<String, Object?> json) => _$PostingObservationModelFromJson(json);
}

