import 'package:freezed_annotation/freezed_annotation.dart';

part 'crops_model.freezed.dart';
part 'crops_model.g.dart';

@freezed
class CropsModel with _$CropsModel {
  const factory CropsModel({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "image") String? image,
  }) = _CropsModel;

  factory CropsModel.fromJson(Map<String, dynamic> json) =>
      _$CropsModelFromJson(json);
}
