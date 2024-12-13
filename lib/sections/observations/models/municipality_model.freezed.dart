// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'municipality_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MunicipalityModel _$MunicipalityModelFromJson(Map<String, dynamic> json) {
  return _MunicipalityModel.fromJson(json);
}

/// @nodoc
mixin _$MunicipalityModel {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;

  /// Serializes this MunicipalityModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MunicipalityModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MunicipalityModelCopyWith<MunicipalityModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MunicipalityModelCopyWith<$Res> {
  factory $MunicipalityModelCopyWith(
          MunicipalityModel value, $Res Function(MunicipalityModel) then) =
      _$MunicipalityModelCopyWithImpl<$Res, MunicipalityModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id, @JsonKey(name: 'name') String? name});
}

/// @nodoc
class _$MunicipalityModelCopyWithImpl<$Res, $Val extends MunicipalityModel>
    implements $MunicipalityModelCopyWith<$Res> {
  _$MunicipalityModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MunicipalityModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MunicipalityModelImplCopyWith<$Res>
    implements $MunicipalityModelCopyWith<$Res> {
  factory _$$MunicipalityModelImplCopyWith(_$MunicipalityModelImpl value,
          $Res Function(_$MunicipalityModelImpl) then) =
      __$$MunicipalityModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id, @JsonKey(name: 'name') String? name});
}

/// @nodoc
class __$$MunicipalityModelImplCopyWithImpl<$Res>
    extends _$MunicipalityModelCopyWithImpl<$Res, _$MunicipalityModelImpl>
    implements _$$MunicipalityModelImplCopyWith<$Res> {
  __$$MunicipalityModelImplCopyWithImpl(_$MunicipalityModelImpl _value,
      $Res Function(_$MunicipalityModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MunicipalityModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$MunicipalityModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MunicipalityModelImpl implements _MunicipalityModel {
  const _$MunicipalityModelImpl(
      {@JsonKey(name: 'id') this.id, @JsonKey(name: 'name') this.name});

  factory _$MunicipalityModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MunicipalityModelImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'name')
  final String? name;

  @override
  String toString() {
    return 'MunicipalityModel(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MunicipalityModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of MunicipalityModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MunicipalityModelImplCopyWith<_$MunicipalityModelImpl> get copyWith =>
      __$$MunicipalityModelImplCopyWithImpl<_$MunicipalityModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MunicipalityModelImplToJson(
      this,
    );
  }
}

abstract class _MunicipalityModel implements MunicipalityModel {
  const factory _MunicipalityModel(
      {@JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'name') final String? name}) = _$MunicipalityModelImpl;

  factory _MunicipalityModel.fromJson(Map<String, dynamic> json) =
      _$MunicipalityModelImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'name')
  String? get name;

  /// Create a copy of MunicipalityModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MunicipalityModelImplCopyWith<_$MunicipalityModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
