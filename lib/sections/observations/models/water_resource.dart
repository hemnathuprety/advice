import 'package:freezed_annotation/freezed_annotation.dart';

part 'water_resource.freezed.dart';
part 'water_resource.g.dart';

@freezed
class WaterResource with _$WaterResource {
  const factory WaterResource({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
  }) = _WaterResource;

  factory WaterResource.fromJson(Map<String, Object?> json) => _$WaterResourceFromJson(json);
}

