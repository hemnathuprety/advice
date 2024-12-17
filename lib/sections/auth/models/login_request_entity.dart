import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_request_entity.freezed.dart';
part 'login_request_entity.g.dart';

@freezed
class LoginRequestEntity with _$LoginRequestEntity {
  const factory LoginRequestEntity({
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'password') String? password,
    @JsonKey(name: 'username') String? username,
  }) = _LoginRequestEntity;

  factory LoginRequestEntity.fromJson(Map<String, Object?> json) => _$LoginRequestEntityFromJson(json);
}

