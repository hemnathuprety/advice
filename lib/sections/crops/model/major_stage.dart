// To parse this JSON data, do
//
//     final majorStage = majorStageFromMap(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';

part 'major_stage.freezed.dart';
part 'major_stage.g.dart';

@freezed
class MajorStage with _$MajorStage {
  const factory MajorStage({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "description") dynamic description,
  }) = _MajorStage;

  factory MajorStage.fromJson(Map<String, dynamic> json) =>
      _$MajorStageFromJson(json);
}
