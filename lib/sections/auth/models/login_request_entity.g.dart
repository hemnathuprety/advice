// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_request_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginRequestEntityImpl _$$LoginRequestEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$LoginRequestEntityImpl(
      email: json['email'] as String?,
      password: json['password'] as String?,
      username: json['username'] as String?,
    );

Map<String, dynamic> _$$LoginRequestEntityImplToJson(
        _$LoginRequestEntityImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'username': instance.username,
    };
