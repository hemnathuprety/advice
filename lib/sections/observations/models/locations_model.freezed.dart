// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'locations_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LocationsModel _$LocationsModelFromJson(Map<String, dynamic> json) {
  return _LocationsModel.fromJson(json);
}

/// @nodoc
mixin _$LocationsModel {
  @JsonKey(name: 'district')
  Districts? get district => throw _privateConstructorUsedError;
  @JsonKey(name: 'province')
  ProvinceModel? get province => throw _privateConstructorUsedError;
  @JsonKey(name: 'municipality')
  MunicipalityModel? get municipality => throw _privateConstructorUsedError;

  /// Serializes this LocationsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LocationsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LocationsModelCopyWith<LocationsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationsModelCopyWith<$Res> {
  factory $LocationsModelCopyWith(
          LocationsModel value, $Res Function(LocationsModel) then) =
      _$LocationsModelCopyWithImpl<$Res, LocationsModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'district') Districts? district,
      @JsonKey(name: 'province') ProvinceModel? province,
      @JsonKey(name: 'municipality') MunicipalityModel? municipality});

  $DistrictsCopyWith<$Res>? get district;
  $ProvinceModelCopyWith<$Res>? get province;
  $MunicipalityModelCopyWith<$Res>? get municipality;
}

/// @nodoc
class _$LocationsModelCopyWithImpl<$Res, $Val extends LocationsModel>
    implements $LocationsModelCopyWith<$Res> {
  _$LocationsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LocationsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? district = freezed,
    Object? province = freezed,
    Object? municipality = freezed,
  }) {
    return _then(_value.copyWith(
      district: freezed == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as Districts?,
      province: freezed == province
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as ProvinceModel?,
      municipality: freezed == municipality
          ? _value.municipality
          : municipality // ignore: cast_nullable_to_non_nullable
              as MunicipalityModel?,
    ) as $Val);
  }

  /// Create a copy of LocationsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DistrictsCopyWith<$Res>? get district {
    if (_value.district == null) {
      return null;
    }

    return $DistrictsCopyWith<$Res>(_value.district!, (value) {
      return _then(_value.copyWith(district: value) as $Val);
    });
  }

  /// Create a copy of LocationsModel
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

  /// Create a copy of LocationsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MunicipalityModelCopyWith<$Res>? get municipality {
    if (_value.municipality == null) {
      return null;
    }

    return $MunicipalityModelCopyWith<$Res>(_value.municipality!, (value) {
      return _then(_value.copyWith(municipality: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LocationsModelImplCopyWith<$Res>
    implements $LocationsModelCopyWith<$Res> {
  factory _$$LocationsModelImplCopyWith(_$LocationsModelImpl value,
          $Res Function(_$LocationsModelImpl) then) =
      __$$LocationsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'district') Districts? district,
      @JsonKey(name: 'province') ProvinceModel? province,
      @JsonKey(name: 'municipality') MunicipalityModel? municipality});

  @override
  $DistrictsCopyWith<$Res>? get district;
  @override
  $ProvinceModelCopyWith<$Res>? get province;
  @override
  $MunicipalityModelCopyWith<$Res>? get municipality;
}

/// @nodoc
class __$$LocationsModelImplCopyWithImpl<$Res>
    extends _$LocationsModelCopyWithImpl<$Res, _$LocationsModelImpl>
    implements _$$LocationsModelImplCopyWith<$Res> {
  __$$LocationsModelImplCopyWithImpl(
      _$LocationsModelImpl _value, $Res Function(_$LocationsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of LocationsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? district = freezed,
    Object? province = freezed,
    Object? municipality = freezed,
  }) {
    return _then(_$LocationsModelImpl(
      district: freezed == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as Districts?,
      province: freezed == province
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as ProvinceModel?,
      municipality: freezed == municipality
          ? _value.municipality
          : municipality // ignore: cast_nullable_to_non_nullable
              as MunicipalityModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocationsModelImpl implements _LocationsModel {
  const _$LocationsModelImpl(
      {@JsonKey(name: 'district') this.district,
      @JsonKey(name: 'province') this.province,
      @JsonKey(name: 'municipality') this.municipality});

  factory _$LocationsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocationsModelImplFromJson(json);

  @override
  @JsonKey(name: 'district')
  final Districts? district;
  @override
  @JsonKey(name: 'province')
  final ProvinceModel? province;
  @override
  @JsonKey(name: 'municipality')
  final MunicipalityModel? municipality;

  @override
  String toString() {
    return 'LocationsModel(district: $district, province: $province, municipality: $municipality)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationsModelImpl &&
            (identical(other.district, district) ||
                other.district == district) &&
            (identical(other.province, province) ||
                other.province == province) &&
            (identical(other.municipality, municipality) ||
                other.municipality == municipality));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, district, province, municipality);

  /// Create a copy of LocationsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationsModelImplCopyWith<_$LocationsModelImpl> get copyWith =>
      __$$LocationsModelImplCopyWithImpl<_$LocationsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationsModelImplToJson(
      this,
    );
  }
}

abstract class _LocationsModel implements LocationsModel {
  const factory _LocationsModel(
      {@JsonKey(name: 'district') final Districts? district,
      @JsonKey(name: 'province') final ProvinceModel? province,
      @JsonKey(name: 'municipality')
      final MunicipalityModel? municipality}) = _$LocationsModelImpl;

  factory _LocationsModel.fromJson(Map<String, dynamic> json) =
      _$LocationsModelImpl.fromJson;

  @override
  @JsonKey(name: 'district')
  Districts? get district;
  @override
  @JsonKey(name: 'province')
  ProvinceModel? get province;
  @override
  @JsonKey(name: 'municipality')
  MunicipalityModel? get municipality;

  /// Create a copy of LocationsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocationsModelImplCopyWith<_$LocationsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
