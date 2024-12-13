import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_model.freezed.dart';
part 'profile_model.g.dart';

@freezed
class ProfileModel with _$ProfileModel {
  const factory ProfileModel({
    @JsonKey(name: 'refresh') String? refresh,
    @JsonKey(name: 'access') String? access,
    @JsonKey(name: 'user') User? user,
  }) = _ProfileModel;

  factory ProfileModel.fromJson(Map<String, Object?> json) => _$ProfileModelFromJson(json);
}

@freezed
class User with _$User {
  const factory User({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'username') String? username,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'groups') List<dynamic>? groups,
    @JsonKey(name: 'permissions') List<dynamic>? permissions,
  }) = _User;

  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);
}

