import 'package:advice/sections/observations/models/province_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'districts_model.freezed.dart';
part 'districts_model.g.dart';

@freezed
class DistrictsModel with _$DistrictsModel {
  const factory DistrictsModel({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'districts') List<Districts>? districts,
  }) = _DistrictsModel;

  factory DistrictsModel.fromJson(Map<String, Object?> json) => _$DistrictsModelFromJson(json);
}

@freezed
class Districts with _$Districts {
  const factory Districts({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'province') ProvinceModel? province,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'administrative_id') int? administrativeId,
  }) = _Districts;

  factory Districts.fromJson(Map<String, Object?> json) => _$DistrictsFromJson(json);
}

