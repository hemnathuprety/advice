// To parse this JSON data, do
//
//     final cropThreat = cropThreatFromMap(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'crop_threat.freezed.dart';
part 'crop_threat.g.dart';

@freezed
class CropThreat with _$CropThreat {
  const factory CropThreat({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "description") String? description,
  }) = _CropThreat;

  factory CropThreat.fromJson(Map<String, dynamic> json) =>
      _$CropThreatFromJson(json);
}
