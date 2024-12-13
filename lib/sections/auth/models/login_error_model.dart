import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_error_model.freezed.dart';
part 'login_error_model.g.dart';

@freezed
class LoginErrorModel with _$LoginErrorModel {
  const factory LoginErrorModel({
    @JsonKey(name: 'detail') String? detail,
  }) = _LoginErrorModel;

  factory LoginErrorModel.fromJson(Map<String, Object?> json) => _$LoginErrorModelFromJson(json);
}

