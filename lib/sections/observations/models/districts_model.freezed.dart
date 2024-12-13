// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'districts_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DistrictsModel _$DistrictsModelFromJson(Map<String, dynamic> json) {
  return _DistrictsModel.fromJson(json);
}

/// @nodoc
mixin _$DistrictsModel {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'districts')
  List<Districts>? get districts => throw _privateConstructorUsedError;

  /// Serializes this DistrictsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DistrictsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DistrictsModelCopyWith<DistrictsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DistrictsModelCopyWith<$Res> {
  factory $DistrictsModelCopyWith(
          DistrictsModel value, $Res Function(DistrictsModel) then) =
      _$DistrictsModelCopyWithImpl<$Res, DistrictsModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'districts') List<Districts>? districts});
}

/// @nodoc
class _$DistrictsModelCopyWithImpl<$Res, $Val extends DistrictsModel>
    implements $DistrictsModelCopyWith<$Res> {
  _$DistrictsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DistrictsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? districts = freezed,
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
      districts: freezed == districts
          ? _value.districts
          : districts // ignore: cast_nullable_to_non_nullable
              as List<Districts>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DistrictsModelImplCopyWith<$Res>
    implements $DistrictsModelCopyWith<$Res> {
  factory _$$DistrictsModelImplCopyWith(_$DistrictsModelImpl value,
          $Res Function(_$DistrictsModelImpl) then) =
      __$$DistrictsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'districts') List<Districts>? districts});
}

/// @nodoc
class __$$DistrictsModelImplCopyWithImpl<$Res>
    extends _$DistrictsModelCopyWithImpl<$Res, _$DistrictsModelImpl>
    implements _$$DistrictsModelImplCopyWith<$Res> {
  __$$DistrictsModelImplCopyWithImpl(
      _$DistrictsModelImpl _value, $Res Function(_$DistrictsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of DistrictsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? districts = freezed,
  }) {
    return _then(_$DistrictsModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      districts: freezed == districts
          ? _value._districts
          : districts // ignore: cast_nullable_to_non_nullable
              as List<Districts>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DistrictsModelImpl implements _DistrictsModel {
  const _$DistrictsModelImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'districts') final List<Districts>? districts})
      : _districts = districts;

  factory _$DistrictsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DistrictsModelImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'name')
  final String? name;
  final List<Districts>? _districts;
  @override
  @JsonKey(name: 'districts')
  List<Districts>? get districts {
    final value = _districts;
    if (value == null) return null;
    if (_districts is EqualUnmodifiableListView) return _districts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DistrictsModel(id: $id, name: $name, districts: $districts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DistrictsModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._districts, _districts));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, const DeepCollectionEquality().hash(_districts));

  /// Create a copy of DistrictsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DistrictsModelImplCopyWith<_$DistrictsModelImpl> get copyWith =>
      __$$DistrictsModelImplCopyWithImpl<_$DistrictsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DistrictsModelImplToJson(
      this,
    );
  }
}

abstract class _DistrictsModel implements DistrictsModel {
  const factory _DistrictsModel(
          {@JsonKey(name: 'id') final int? id,
          @JsonKey(name: 'name') final String? name,
          @JsonKey(name: 'districts') final List<Districts>? districts}) =
      _$DistrictsModelImpl;

  factory _DistrictsModel.fromJson(Map<String, dynamic> json) =
      _$DistrictsModelImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'districts')
  List<Districts>? get districts;

  /// Create a copy of DistrictsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DistrictsModelImplCopyWith<_$DistrictsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Districts _$DistrictsFromJson(Map<String, dynamic> json) {
  return _Districts.fromJson(json);
}

/// @nodoc
mixin _$Districts {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'province')
  ProvinceModel? get province => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'administrative_id')
  int? get administrativeId => throw _privateConstructorUsedError;

  /// Serializes this Districts to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Districts
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DistrictsCopyWith<Districts> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DistrictsCopyWith<$Res> {
  factory $DistrictsCopyWith(Districts value, $Res Function(Districts) then) =
      _$DistrictsCopyWithImpl<$Res, Districts>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'province') ProvinceModel? province,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'administrative_id') int? administrativeId});

  $ProvinceModelCopyWith<$Res>? get province;
}

/// @nodoc
class _$DistrictsCopyWithImpl<$Res, $Val extends Districts>
    implements $DistrictsCopyWith<$Res> {
  _$DistrictsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Districts
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? province = freezed,
    Object? name = freezed,
    Object? administrativeId = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      province: freezed == province
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as ProvinceModel?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      administrativeId: freezed == administrativeId
          ? _value.administrativeId
          : administrativeId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  /// Create a copy of Districts
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProvinceModelCopyWith<$Res>? get province {
    if (_value.province == null) {
      return null;
    }

    return $ProvinceModelCopyWith<$Res>(_value.province!, (value) {
      return _then(_value.copyWith(province: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DistrictsImplCopyWith<$Res>
    implements $DistrictsCopyWith<$Res> {
  factory _$$DistrictsImplCopyWith(
          _$DistrictsImpl value, $Res Function(_$DistrictsImpl) then) =
      __$$DistrictsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'province') ProvinceModel? province,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'administrative_id') int? administrativeId});

  @override
  $ProvinceModelCopyWith<$Res>? get province;
}

/// @nodoc
class __$$DistrictsImplCopyWithImpl<$Res>
    extends _$DistrictsCopyWithImpl<$Res, _$DistrictsImpl>
    implements _$$DistrictsImplCopyWith<$Res> {
  __$$DistrictsImplCopyWithImpl(
      _$DistrictsImpl _value, $Res Function(_$DistrictsImpl) _then)
      : super(_value, _then);

  /// Create a copy of Districts
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? province = freezed,
    Object? name = freezed,
    Object? administrativeId = freezed,
  }) {
    return _then(_$DistrictsImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      province: freezed == province
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as ProvinceModel?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      administrativeId: freezed == administrativeId
          ? _value.administrativeId
          : administrativeId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DistrictsImpl implements _Districts {
  const _$DistrictsImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'province') this.province,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'administrative_id') this.administrativeId});

  factory _$DistrictsImpl.fromJson(Map<String, dynamic> json) =>
      _$$DistrictsImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'province')
  final ProvinceModel? province;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'administrative_id')
  final int? administrativeId;

  @override
  String toString() {
    return 'Districts(id: $id, province: $province, name: $name, administrativeId: $administrativeId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DistrictsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.province, province) ||
                other.province == province) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.administrativeId, administrativeId) ||
                other.administrativeId == administrativeId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, province, name, administrativeId);

  /// Create a copy of Districts
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DistrictsImplCopyWith<_$DistrictsImpl> get copyWith =>
      __$$DistrictsImplCopyWithImpl<_$DistrictsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DistrictsImplToJson(
      this,
    );
  }
}

abstract class _Districts implements Districts {
  const factory _Districts(
          {@JsonKey(name: 'id') final int? id,
          @JsonKey(name: 'province') final ProvinceModel? province,
          @JsonKey(name: 'name') final String? name,
          @JsonKey(name: 'administrative_id') final int? administrativeId}) =
      _$DistrictsImpl;

  factory _Districts.fromJson(Map<String, dynamic> json) =
      _$DistrictsImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'province')
  ProvinceModel? get province;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'administrative_id')
  int? get administrativeId;

  /// Create a copy of Districts
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DistrictsImplCopyWith<_$DistrictsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
