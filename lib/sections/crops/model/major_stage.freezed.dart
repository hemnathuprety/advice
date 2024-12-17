// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'major_stage.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MajorStage _$MajorStageFromJson(Map<String, dynamic> json) {
  return _MajorStage.fromJson(json);
}

/// @nodoc
mixin _$MajorStage {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  dynamic get description => throw _privateConstructorUsedError;

  /// Serializes this MajorStage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MajorStage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MajorStageCopyWith<MajorStage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MajorStageCopyWith<$Res> {
  factory $MajorStageCopyWith(
          MajorStage value, $Res Function(MajorStage) then) =
      _$MajorStageCopyWithImpl<$Res, MajorStage>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "description") dynamic description});
}

/// @nodoc
class _$MajorStageCopyWithImpl<$Res, $Val extends MajorStage>
    implements $MajorStageCopyWith<$Res> {
  _$MajorStageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MajorStage
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
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MajorStageImplCopyWith<$Res>
    implements $MajorStageCopyWith<$Res> {
  factory _$$MajorStageImplCopyWith(
          _$MajorStageImpl value, $Res Function(_$MajorStageImpl) then) =
      __$$MajorStageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "description") dynamic description});
}

/// @nodoc
class __$$MajorStageImplCopyWithImpl<$Res>
    extends _$MajorStageCopyWithImpl<$Res, _$MajorStageImpl>
    implements _$$MajorStageImplCopyWith<$Res> {
  __$$MajorStageImplCopyWithImpl(
      _$MajorStageImpl _value, $Res Function(_$MajorStageImpl) _then)
      : super(_value, _then);

  /// Create a copy of MajorStage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
  }) {
    return _then(_$MajorStageImpl(
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
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MajorStageImpl implements _MajorStage {
  const _$MajorStageImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "description") this.description});

  factory _$MajorStageImpl.fromJson(Map<String, dynamic> json) =>
      _$$MajorStageImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "description")
  final dynamic description;

  @override
  String toString() {
    return 'MajorStage(id: $id, name: $name, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MajorStageImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other.description, description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, const DeepCollectionEquality().hash(description));

  /// Create a copy of MajorStage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MajorStageImplCopyWith<_$MajorStageImpl> get copyWith =>
      __$$MajorStageImplCopyWithImpl<_$MajorStageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MajorStageImplToJson(
      this,
    );
  }
}

abstract class _MajorStage implements MajorStage {
  const factory _MajorStage(
          {@JsonKey(name: "id") final int? id,
          @JsonKey(name: "name") final String? name,
          @JsonKey(name: "description") final dynamic description}) =
      _$MajorStageImpl;

  factory _MajorStage.fromJson(Map<String, dynamic> json) =
      _$MajorStageImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "description")
  dynamic get description;

  /// Create a copy of MajorStage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MajorStageImplCopyWith<_$MajorStageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
