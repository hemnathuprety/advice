// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_error_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LoginErrorModel _$LoginErrorModelFromJson(Map<String, dynamic> json) {
  return _LoginErrorModel.fromJson(json);
}

/// @nodoc
mixin _$LoginErrorModel {
  @JsonKey(name: 'detail')
  String? get detail => throw _privateConstructorUsedError;

  /// Serializes this LoginErrorModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LoginErrorModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoginErrorModelCopyWith<LoginErrorModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginErrorModelCopyWith<$Res> {
  factory $LoginErrorModelCopyWith(
          LoginErrorModel value, $Res Function(LoginErrorModel) then) =
      _$LoginErrorModelCopyWithImpl<$Res, LoginErrorModel>;
  @useResult
  $Res call({@JsonKey(name: 'detail') String? detail});
}

/// @nodoc
class _$LoginErrorModelCopyWithImpl<$Res, $Val extends LoginErrorModel>
    implements $LoginErrorModelCopyWith<$Res> {
  _$LoginErrorModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginErrorModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? detail = freezed,
  }) {
    return _then(_value.copyWith(
      detail: freezed == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginErrorModelImplCopyWith<$Res>
    implements $LoginErrorModelCopyWith<$Res> {
  factory _$$LoginErrorModelImplCopyWith(_$LoginErrorModelImpl value,
          $Res Function(_$LoginErrorModelImpl) then) =
      __$$LoginErrorModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'detail') String? detail});
}

/// @nodoc
class __$$LoginErrorModelImplCopyWithImpl<$Res>
    extends _$LoginErrorModelCopyWithImpl<$Res, _$LoginErrorModelImpl>
    implements _$$LoginErrorModelImplCopyWith<$Res> {
  __$$LoginErrorModelImplCopyWithImpl(
      _$LoginErrorModelImpl _value, $Res Function(_$LoginErrorModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginErrorModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? detail = freezed,
  }) {
    return _then(_$LoginErrorModelImpl(
      detail: freezed == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginErrorModelImpl implements _LoginErrorModel {
  const _$LoginErrorModelImpl({@JsonKey(name: 'detail') this.detail});

  factory _$LoginErrorModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginErrorModelImplFromJson(json);

  @override
  @JsonKey(name: 'detail')
  final String? detail;

  @override
  String toString() {
    return 'LoginErrorModel(detail: $detail)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginErrorModelImpl &&
            (identical(other.detail, detail) || other.detail == detail));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, detail);

  /// Create a copy of LoginErrorModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginErrorModelImplCopyWith<_$LoginErrorModelImpl> get copyWith =>
      __$$LoginErrorModelImplCopyWithImpl<_$LoginErrorModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginErrorModelImplToJson(
      this,
    );
  }
}

abstract class _LoginErrorModel implements LoginErrorModel {
  const factory _LoginErrorModel(
      {@JsonKey(name: 'detail') final String? detail}) = _$LoginErrorModelImpl;

  factory _LoginErrorModel.fromJson(Map<String, dynamic> json) =
      _$LoginErrorModelImpl.fromJson;

  @override
  @JsonKey(name: 'detail')
  String? get detail;

  /// Create a copy of LoginErrorModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginErrorModelImplCopyWith<_$LoginErrorModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
