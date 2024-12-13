// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'crop_threat.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CropThreat _$CropThreatFromJson(Map<String, dynamic> json) {
  return _CropThreat.fromJson(json);
}

/// @nodoc
mixin _$CropThreat {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String? get description => throw _privateConstructorUsedError;

  /// Serializes this CropThreat to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CropThreat
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CropThreatCopyWith<CropThreat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CropThreatCopyWith<$Res> {
  factory $CropThreatCopyWith(
          CropThreat value, $Res Function(CropThreat) then) =
      _$CropThreatCopyWithImpl<$Res, CropThreat>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "description") String? description});
}

/// @nodoc
class _$CropThreatCopyWithImpl<$Res, $Val extends CropThreat>
    implements $CropThreatCopyWith<$Res> {
  _$CropThreatCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CropThreat
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
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
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CropThreatImplCopyWith<$Res>
    implements $CropThreatCopyWith<$Res> {
  factory _$$CropThreatImplCopyWith(
          _$CropThreatImpl value, $Res Function(_$CropThreatImpl) then) =
      __$$CropThreatImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "description") String? description});
}

/// @nodoc
class __$$CropThreatImplCopyWithImpl<$Res>
    extends _$CropThreatCopyWithImpl<$Res, _$CropThreatImpl>
    implements _$$CropThreatImplCopyWith<$Res> {
  __$$CropThreatImplCopyWithImpl(
      _$CropThreatImpl _value, $Res Function(_$CropThreatImpl) _then)
      : super(_value, _then);

  /// Create a copy of CropThreat
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
  }) {
    return _then(_$CropThreatImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CropThreatImpl implements _CropThreat {
  const _$CropThreatImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "description") this.description});

  factory _$CropThreatImpl.fromJson(Map<String, dynamic> json) =>
      _$$CropThreatImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "description")
  final String? description;

  @override
  String toString() {
    return 'CropThreat(id: $id, name: $name, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CropThreatImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, description);

  /// Create a copy of CropThreat
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CropThreatImplCopyWith<_$CropThreatImpl> get copyWith =>
      __$$CropThreatImplCopyWithImpl<_$CropThreatImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CropThreatImplToJson(
      this,
    );
  }
}

abstract class _CropThreat implements CropThreat {
  const factory _CropThreat(
          {@JsonKey(name: "id") final int? id,
          @JsonKey(name: "name") final String? name,
          @JsonKey(name: "description") final String? description}) =
      _$CropThreatImpl;

  factory _CropThreat.fromJson(Map<String, dynamic> json) =
      _$CropThreatImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "description")
  String? get description;

  /// Create a copy of CropThreat
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CropThreatImplCopyWith<_$CropThreatImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
