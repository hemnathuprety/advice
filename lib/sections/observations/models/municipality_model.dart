import 'package:freezed_annotation/freezed_annotation.dart';

part 'municipality_model.freezed.dart';
part 'municipality_model.g.dart';

@freezed
class MunicipalityModel with _$MunicipalityModel {
  const factory MunicipalityModel({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
  }) = _MunicipalityModel;

  factory MunicipalityModel.fromJson(Map<String, Object?> json) => _$MunicipalityModelFromJson(json);
}

