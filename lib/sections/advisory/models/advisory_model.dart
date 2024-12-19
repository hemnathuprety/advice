import 'package:freezed_annotation/freezed_annotation.dart';

part 'advisory_model.freezed.dart';
part 'advisory_model.g.dart';

@freezed
class AdvisoryModel with _$AdvisoryModel {
  const factory AdvisoryModel({
    @JsonKey(name: 'advisory_start_date') String? advisoryStartDate,
    @JsonKey(name: 'advisory_end_date') String? advisoryEndDate,
    @JsonKey(name: 'crop') Crop? crop,
    @JsonKey(name: 'pest_alerts') bool? pestAlerts,
    @JsonKey(name: 'color') String? color,
    @JsonKey(name: 'pdf') String? pdf,
    @JsonKey(name: 'observation_summary') String? observationSummary,
  }) = _AdvisoryModel;

  factory AdvisoryModel.fromJson(Map<String, Object?> json) => _$AdvisoryModelFromJson(json);
}

@freezed
class Crop with _$Crop {
  const factory Crop({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
  }) = _Crop;

  factory Crop.fromJson(Map<String, Object?> json) => _$CropFromJson(json);
}

