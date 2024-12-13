// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'observation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ObservationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() reset,
    required TResult Function(int provinceId) districtLoad,
    required TResult Function(int districtId) municipalityLoad,
    required TResult Function() cropLoad,
    required TResult Function(int cropId) cropDetailLoad,
    required TResult Function(String lat, String long) locationDetailLoad,
    required TResult Function(PostingObservationModel observationModel)
        observationLoad,
    required TResult Function(bool value) isEnterManuallyLoad,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? reset,
    TResult? Function(int provinceId)? districtLoad,
    TResult? Function(int districtId)? municipalityLoad,
    TResult? Function()? cropLoad,
    TResult? Function(int cropId)? cropDetailLoad,
    TResult? Function(String lat, String long)? locationDetailLoad,
    TResult? Function(PostingObservationModel observationModel)?
        observationLoad,
    TResult? Function(bool value)? isEnterManuallyLoad,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? reset,
    TResult Function(int provinceId)? districtLoad,
    TResult Function(int districtId)? municipalityLoad,
    TResult Function()? cropLoad,
    TResult Function(int cropId)? cropDetailLoad,
    TResult Function(String lat, String long)? locationDetailLoad,
    TResult Function(PostingObservationModel observationModel)? observationLoad,
    TResult Function(bool value)? isEnterManuallyLoad,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_Reset value) reset,
    required TResult Function(_DistrictLoad value) districtLoad,
    required TResult Function(_MunicipalityLoad value) municipalityLoad,
    required TResult Function(_CropLoad value) cropLoad,
    required TResult Function(_CropDetailLoad value) cropDetailLoad,
    required TResult Function(_LocationDetailLoad value) locationDetailLoad,
    required TResult Function(_ObservationLoad value) observationLoad,
    required TResult Function(_IsEnterManuallyLoad value) isEnterManuallyLoad,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Load value)? load,
    TResult? Function(_Reset value)? reset,
    TResult? Function(_DistrictLoad value)? districtLoad,
    TResult? Function(_MunicipalityLoad value)? municipalityLoad,
    TResult? Function(_CropLoad value)? cropLoad,
    TResult? Function(_CropDetailLoad value)? cropDetailLoad,
    TResult? Function(_LocationDetailLoad value)? locationDetailLoad,
    TResult? Function(_ObservationLoad value)? observationLoad,
    TResult? Function(_IsEnterManuallyLoad value)? isEnterManuallyLoad,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_Reset value)? reset,
    TResult Function(_DistrictLoad value)? districtLoad,
    TResult Function(_MunicipalityLoad value)? municipalityLoad,
    TResult Function(_CropLoad value)? cropLoad,
    TResult Function(_CropDetailLoad value)? cropDetailLoad,
    TResult Function(_LocationDetailLoad value)? locationDetailLoad,
    TResult Function(_ObservationLoad value)? observationLoad,
    TResult Function(_IsEnterManuallyLoad value)? isEnterManuallyLoad,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ObservationEventCopyWith<$Res> {
  factory $ObservationEventCopyWith(
          ObservationEvent value, $Res Function(ObservationEvent) then) =
      _$ObservationEventCopyWithImpl<$Res, ObservationEvent>;
}

/// @nodoc
class _$ObservationEventCopyWithImpl<$Res, $Val extends ObservationEvent>
    implements $ObservationEventCopyWith<$Res> {
  _$ObservationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ObservationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadImplCopyWith<$Res> {
  factory _$$LoadImplCopyWith(
          _$LoadImpl value, $Res Function(_$LoadImpl) then) =
      __$$LoadImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadImplCopyWithImpl<$Res>
    extends _$ObservationEventCopyWithImpl<$Res, _$LoadImpl>
    implements _$$LoadImplCopyWith<$Res> {
  __$$LoadImplCopyWithImpl(_$LoadImpl _value, $Res Function(_$LoadImpl) _then)
      : super(_value, _then);

  /// Create a copy of ObservationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadImpl implements _Load {
  const _$LoadImpl();

  @override
  String toString() {
    return 'ObservationEvent.load()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() reset,
    required TResult Function(int provinceId) districtLoad,
    required TResult Function(int districtId) municipalityLoad,
    required TResult Function() cropLoad,
    required TResult Function(int cropId) cropDetailLoad,
    required TResult Function(String lat, String long) locationDetailLoad,
    required TResult Function(PostingObservationModel observationModel)
        observationLoad,
    required TResult Function(bool value) isEnterManuallyLoad,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? reset,
    TResult? Function(int provinceId)? districtLoad,
    TResult? Function(int districtId)? municipalityLoad,
    TResult? Function()? cropLoad,
    TResult? Function(int cropId)? cropDetailLoad,
    TResult? Function(String lat, String long)? locationDetailLoad,
    TResult? Function(PostingObservationModel observationModel)?
        observationLoad,
    TResult? Function(bool value)? isEnterManuallyLoad,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? reset,
    TResult Function(int provinceId)? districtLoad,
    TResult Function(int districtId)? municipalityLoad,
    TResult Function()? cropLoad,
    TResult Function(int cropId)? cropDetailLoad,
    TResult Function(String lat, String long)? locationDetailLoad,
    TResult Function(PostingObservationModel observationModel)? observationLoad,
    TResult Function(bool value)? isEnterManuallyLoad,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_Reset value) reset,
    required TResult Function(_DistrictLoad value) districtLoad,
    required TResult Function(_MunicipalityLoad value) municipalityLoad,
    required TResult Function(_CropLoad value) cropLoad,
    required TResult Function(_CropDetailLoad value) cropDetailLoad,
    required TResult Function(_LocationDetailLoad value) locationDetailLoad,
    required TResult Function(_ObservationLoad value) observationLoad,
    required TResult Function(_IsEnterManuallyLoad value) isEnterManuallyLoad,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Load value)? load,
    TResult? Function(_Reset value)? reset,
    TResult? Function(_DistrictLoad value)? districtLoad,
    TResult? Function(_MunicipalityLoad value)? municipalityLoad,
    TResult? Function(_CropLoad value)? cropLoad,
    TResult? Function(_CropDetailLoad value)? cropDetailLoad,
    TResult? Function(_LocationDetailLoad value)? locationDetailLoad,
    TResult? Function(_ObservationLoad value)? observationLoad,
    TResult? Function(_IsEnterManuallyLoad value)? isEnterManuallyLoad,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_Reset value)? reset,
    TResult Function(_DistrictLoad value)? districtLoad,
    TResult Function(_MunicipalityLoad value)? municipalityLoad,
    TResult Function(_CropLoad value)? cropLoad,
    TResult Function(_CropDetailLoad value)? cropDetailLoad,
    TResult Function(_LocationDetailLoad value)? locationDetailLoad,
    TResult Function(_ObservationLoad value)? observationLoad,
    TResult Function(_IsEnterManuallyLoad value)? isEnterManuallyLoad,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _Load implements ObservationEvent {
  const factory _Load() = _$LoadImpl;
}

/// @nodoc
abstract class _$$ResetImplCopyWith<$Res> {
  factory _$$ResetImplCopyWith(
          _$ResetImpl value, $Res Function(_$ResetImpl) then) =
      __$$ResetImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResetImplCopyWithImpl<$Res>
    extends _$ObservationEventCopyWithImpl<$Res, _$ResetImpl>
    implements _$$ResetImplCopyWith<$Res> {
  __$$ResetImplCopyWithImpl(
      _$ResetImpl _value, $Res Function(_$ResetImpl) _then)
      : super(_value, _then);

  /// Create a copy of ObservationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ResetImpl implements _Reset {
  const _$ResetImpl();

  @override
  String toString() {
    return 'ObservationEvent.reset()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResetImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() reset,
    required TResult Function(int provinceId) districtLoad,
    required TResult Function(int districtId) municipalityLoad,
    required TResult Function() cropLoad,
    required TResult Function(int cropId) cropDetailLoad,
    required TResult Function(String lat, String long) locationDetailLoad,
    required TResult Function(PostingObservationModel observationModel)
        observationLoad,
    required TResult Function(bool value) isEnterManuallyLoad,
  }) {
    return reset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? reset,
    TResult? Function(int provinceId)? districtLoad,
    TResult? Function(int districtId)? municipalityLoad,
    TResult? Function()? cropLoad,
    TResult? Function(int cropId)? cropDetailLoad,
    TResult? Function(String lat, String long)? locationDetailLoad,
    TResult? Function(PostingObservationModel observationModel)?
        observationLoad,
    TResult? Function(bool value)? isEnterManuallyLoad,
  }) {
    return reset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? reset,
    TResult Function(int provinceId)? districtLoad,
    TResult Function(int districtId)? municipalityLoad,
    TResult Function()? cropLoad,
    TResult Function(int cropId)? cropDetailLoad,
    TResult Function(String lat, String long)? locationDetailLoad,
    TResult Function(PostingObservationModel observationModel)? observationLoad,
    TResult Function(bool value)? isEnterManuallyLoad,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_Reset value) reset,
    required TResult Function(_DistrictLoad value) districtLoad,
    required TResult Function(_MunicipalityLoad value) municipalityLoad,
    required TResult Function(_CropLoad value) cropLoad,
    required TResult Function(_CropDetailLoad value) cropDetailLoad,
    required TResult Function(_LocationDetailLoad value) locationDetailLoad,
    required TResult Function(_ObservationLoad value) observationLoad,
    required TResult Function(_IsEnterManuallyLoad value) isEnterManuallyLoad,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Load value)? load,
    TResult? Function(_Reset value)? reset,
    TResult? Function(_DistrictLoad value)? districtLoad,
    TResult? Function(_MunicipalityLoad value)? municipalityLoad,
    TResult? Function(_CropLoad value)? cropLoad,
    TResult? Function(_CropDetailLoad value)? cropDetailLoad,
    TResult? Function(_LocationDetailLoad value)? locationDetailLoad,
    TResult? Function(_ObservationLoad value)? observationLoad,
    TResult? Function(_IsEnterManuallyLoad value)? isEnterManuallyLoad,
  }) {
    return reset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_Reset value)? reset,
    TResult Function(_DistrictLoad value)? districtLoad,
    TResult Function(_MunicipalityLoad value)? municipalityLoad,
    TResult Function(_CropLoad value)? cropLoad,
    TResult Function(_CropDetailLoad value)? cropDetailLoad,
    TResult Function(_LocationDetailLoad value)? locationDetailLoad,
    TResult Function(_ObservationLoad value)? observationLoad,
    TResult Function(_IsEnterManuallyLoad value)? isEnterManuallyLoad,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class _Reset implements ObservationEvent {
  const factory _Reset() = _$ResetImpl;
}

/// @nodoc
abstract class _$$DistrictLoadImplCopyWith<$Res> {
  factory _$$DistrictLoadImplCopyWith(
          _$DistrictLoadImpl value, $Res Function(_$DistrictLoadImpl) then) =
      __$$DistrictLoadImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int provinceId});
}

/// @nodoc
class __$$DistrictLoadImplCopyWithImpl<$Res>
    extends _$ObservationEventCopyWithImpl<$Res, _$DistrictLoadImpl>
    implements _$$DistrictLoadImplCopyWith<$Res> {
  __$$DistrictLoadImplCopyWithImpl(
      _$DistrictLoadImpl _value, $Res Function(_$DistrictLoadImpl) _then)
      : super(_value, _then);

  /// Create a copy of ObservationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? provinceId = null,
  }) {
    return _then(_$DistrictLoadImpl(
      null == provinceId
          ? _value.provinceId
          : provinceId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DistrictLoadImpl implements _DistrictLoad {
  const _$DistrictLoadImpl(this.provinceId);

  @override
  final int provinceId;

  @override
  String toString() {
    return 'ObservationEvent.districtLoad(provinceId: $provinceId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DistrictLoadImpl &&
            (identical(other.provinceId, provinceId) ||
                other.provinceId == provinceId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, provinceId);

  /// Create a copy of ObservationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DistrictLoadImplCopyWith<_$DistrictLoadImpl> get copyWith =>
      __$$DistrictLoadImplCopyWithImpl<_$DistrictLoadImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() reset,
    required TResult Function(int provinceId) districtLoad,
    required TResult Function(int districtId) municipalityLoad,
    required TResult Function() cropLoad,
    required TResult Function(int cropId) cropDetailLoad,
    required TResult Function(String lat, String long) locationDetailLoad,
    required TResult Function(PostingObservationModel observationModel)
        observationLoad,
    required TResult Function(bool value) isEnterManuallyLoad,
  }) {
    return districtLoad(provinceId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? reset,
    TResult? Function(int provinceId)? districtLoad,
    TResult? Function(int districtId)? municipalityLoad,
    TResult? Function()? cropLoad,
    TResult? Function(int cropId)? cropDetailLoad,
    TResult? Function(String lat, String long)? locationDetailLoad,
    TResult? Function(PostingObservationModel observationModel)?
        observationLoad,
    TResult? Function(bool value)? isEnterManuallyLoad,
  }) {
    return districtLoad?.call(provinceId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? reset,
    TResult Function(int provinceId)? districtLoad,
    TResult Function(int districtId)? municipalityLoad,
    TResult Function()? cropLoad,
    TResult Function(int cropId)? cropDetailLoad,
    TResult Function(String lat, String long)? locationDetailLoad,
    TResult Function(PostingObservationModel observationModel)? observationLoad,
    TResult Function(bool value)? isEnterManuallyLoad,
    required TResult orElse(),
  }) {
    if (districtLoad != null) {
      return districtLoad(provinceId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_Reset value) reset,
    required TResult Function(_DistrictLoad value) districtLoad,
    required TResult Function(_MunicipalityLoad value) municipalityLoad,
    required TResult Function(_CropLoad value) cropLoad,
    required TResult Function(_CropDetailLoad value) cropDetailLoad,
    required TResult Function(_LocationDetailLoad value) locationDetailLoad,
    required TResult Function(_ObservationLoad value) observationLoad,
    required TResult Function(_IsEnterManuallyLoad value) isEnterManuallyLoad,
  }) {
    return districtLoad(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Load value)? load,
    TResult? Function(_Reset value)? reset,
    TResult? Function(_DistrictLoad value)? districtLoad,
    TResult? Function(_MunicipalityLoad value)? municipalityLoad,
    TResult? Function(_CropLoad value)? cropLoad,
    TResult? Function(_CropDetailLoad value)? cropDetailLoad,
    TResult? Function(_LocationDetailLoad value)? locationDetailLoad,
    TResult? Function(_ObservationLoad value)? observationLoad,
    TResult? Function(_IsEnterManuallyLoad value)? isEnterManuallyLoad,
  }) {
    return districtLoad?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_Reset value)? reset,
    TResult Function(_DistrictLoad value)? districtLoad,
    TResult Function(_MunicipalityLoad value)? municipalityLoad,
    TResult Function(_CropLoad value)? cropLoad,
    TResult Function(_CropDetailLoad value)? cropDetailLoad,
    TResult Function(_LocationDetailLoad value)? locationDetailLoad,
    TResult Function(_ObservationLoad value)? observationLoad,
    TResult Function(_IsEnterManuallyLoad value)? isEnterManuallyLoad,
    required TResult orElse(),
  }) {
    if (districtLoad != null) {
      return districtLoad(this);
    }
    return orElse();
  }
}

abstract class _DistrictLoad implements ObservationEvent {
  const factory _DistrictLoad(final int provinceId) = _$DistrictLoadImpl;

  int get provinceId;

  /// Create a copy of ObservationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DistrictLoadImplCopyWith<_$DistrictLoadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MunicipalityLoadImplCopyWith<$Res> {
  factory _$$MunicipalityLoadImplCopyWith(_$MunicipalityLoadImpl value,
          $Res Function(_$MunicipalityLoadImpl) then) =
      __$$MunicipalityLoadImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int districtId});
}

/// @nodoc
class __$$MunicipalityLoadImplCopyWithImpl<$Res>
    extends _$ObservationEventCopyWithImpl<$Res, _$MunicipalityLoadImpl>
    implements _$$MunicipalityLoadImplCopyWith<$Res> {
  __$$MunicipalityLoadImplCopyWithImpl(_$MunicipalityLoadImpl _value,
      $Res Function(_$MunicipalityLoadImpl) _then)
      : super(_value, _then);

  /// Create a copy of ObservationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? districtId = null,
  }) {
    return _then(_$MunicipalityLoadImpl(
      null == districtId
          ? _value.districtId
          : districtId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$MunicipalityLoadImpl implements _MunicipalityLoad {
  const _$MunicipalityLoadImpl(this.districtId);

  @override
  final int districtId;

  @override
  String toString() {
    return 'ObservationEvent.municipalityLoad(districtId: $districtId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MunicipalityLoadImpl &&
            (identical(other.districtId, districtId) ||
                other.districtId == districtId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, districtId);

  /// Create a copy of ObservationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MunicipalityLoadImplCopyWith<_$MunicipalityLoadImpl> get copyWith =>
      __$$MunicipalityLoadImplCopyWithImpl<_$MunicipalityLoadImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() reset,
    required TResult Function(int provinceId) districtLoad,
    required TResult Function(int districtId) municipalityLoad,
    required TResult Function() cropLoad,
    required TResult Function(int cropId) cropDetailLoad,
    required TResult Function(String lat, String long) locationDetailLoad,
    required TResult Function(PostingObservationModel observationModel)
        observationLoad,
    required TResult Function(bool value) isEnterManuallyLoad,
  }) {
    return municipalityLoad(districtId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? reset,
    TResult? Function(int provinceId)? districtLoad,
    TResult? Function(int districtId)? municipalityLoad,
    TResult? Function()? cropLoad,
    TResult? Function(int cropId)? cropDetailLoad,
    TResult? Function(String lat, String long)? locationDetailLoad,
    TResult? Function(PostingObservationModel observationModel)?
        observationLoad,
    TResult? Function(bool value)? isEnterManuallyLoad,
  }) {
    return municipalityLoad?.call(districtId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? reset,
    TResult Function(int provinceId)? districtLoad,
    TResult Function(int districtId)? municipalityLoad,
    TResult Function()? cropLoad,
    TResult Function(int cropId)? cropDetailLoad,
    TResult Function(String lat, String long)? locationDetailLoad,
    TResult Function(PostingObservationModel observationModel)? observationLoad,
    TResult Function(bool value)? isEnterManuallyLoad,
    required TResult orElse(),
  }) {
    if (municipalityLoad != null) {
      return municipalityLoad(districtId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_Reset value) reset,
    required TResult Function(_DistrictLoad value) districtLoad,
    required TResult Function(_MunicipalityLoad value) municipalityLoad,
    required TResult Function(_CropLoad value) cropLoad,
    required TResult Function(_CropDetailLoad value) cropDetailLoad,
    required TResult Function(_LocationDetailLoad value) locationDetailLoad,
    required TResult Function(_ObservationLoad value) observationLoad,
    required TResult Function(_IsEnterManuallyLoad value) isEnterManuallyLoad,
  }) {
    return municipalityLoad(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Load value)? load,
    TResult? Function(_Reset value)? reset,
    TResult? Function(_DistrictLoad value)? districtLoad,
    TResult? Function(_MunicipalityLoad value)? municipalityLoad,
    TResult? Function(_CropLoad value)? cropLoad,
    TResult? Function(_CropDetailLoad value)? cropDetailLoad,
    TResult? Function(_LocationDetailLoad value)? locationDetailLoad,
    TResult? Function(_ObservationLoad value)? observationLoad,
    TResult? Function(_IsEnterManuallyLoad value)? isEnterManuallyLoad,
  }) {
    return municipalityLoad?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_Reset value)? reset,
    TResult Function(_DistrictLoad value)? districtLoad,
    TResult Function(_MunicipalityLoad value)? municipalityLoad,
    TResult Function(_CropLoad value)? cropLoad,
    TResult Function(_CropDetailLoad value)? cropDetailLoad,
    TResult Function(_LocationDetailLoad value)? locationDetailLoad,
    TResult Function(_ObservationLoad value)? observationLoad,
    TResult Function(_IsEnterManuallyLoad value)? isEnterManuallyLoad,
    required TResult orElse(),
  }) {
    if (municipalityLoad != null) {
      return municipalityLoad(this);
    }
    return orElse();
  }
}

abstract class _MunicipalityLoad implements ObservationEvent {
  const factory _MunicipalityLoad(final int districtId) =
      _$MunicipalityLoadImpl;

  int get districtId;

  /// Create a copy of ObservationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MunicipalityLoadImplCopyWith<_$MunicipalityLoadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CropLoadImplCopyWith<$Res> {
  factory _$$CropLoadImplCopyWith(
          _$CropLoadImpl value, $Res Function(_$CropLoadImpl) then) =
      __$$CropLoadImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CropLoadImplCopyWithImpl<$Res>
    extends _$ObservationEventCopyWithImpl<$Res, _$CropLoadImpl>
    implements _$$CropLoadImplCopyWith<$Res> {
  __$$CropLoadImplCopyWithImpl(
      _$CropLoadImpl _value, $Res Function(_$CropLoadImpl) _then)
      : super(_value, _then);

  /// Create a copy of ObservationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CropLoadImpl implements _CropLoad {
  const _$CropLoadImpl();

  @override
  String toString() {
    return 'ObservationEvent.cropLoad()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CropLoadImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() reset,
    required TResult Function(int provinceId) districtLoad,
    required TResult Function(int districtId) municipalityLoad,
    required TResult Function() cropLoad,
    required TResult Function(int cropId) cropDetailLoad,
    required TResult Function(String lat, String long) locationDetailLoad,
    required TResult Function(PostingObservationModel observationModel)
        observationLoad,
    required TResult Function(bool value) isEnterManuallyLoad,
  }) {
    return cropLoad();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? reset,
    TResult? Function(int provinceId)? districtLoad,
    TResult? Function(int districtId)? municipalityLoad,
    TResult? Function()? cropLoad,
    TResult? Function(int cropId)? cropDetailLoad,
    TResult? Function(String lat, String long)? locationDetailLoad,
    TResult? Function(PostingObservationModel observationModel)?
        observationLoad,
    TResult? Function(bool value)? isEnterManuallyLoad,
  }) {
    return cropLoad?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? reset,
    TResult Function(int provinceId)? districtLoad,
    TResult Function(int districtId)? municipalityLoad,
    TResult Function()? cropLoad,
    TResult Function(int cropId)? cropDetailLoad,
    TResult Function(String lat, String long)? locationDetailLoad,
    TResult Function(PostingObservationModel observationModel)? observationLoad,
    TResult Function(bool value)? isEnterManuallyLoad,
    required TResult orElse(),
  }) {
    if (cropLoad != null) {
      return cropLoad();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_Reset value) reset,
    required TResult Function(_DistrictLoad value) districtLoad,
    required TResult Function(_MunicipalityLoad value) municipalityLoad,
    required TResult Function(_CropLoad value) cropLoad,
    required TResult Function(_CropDetailLoad value) cropDetailLoad,
    required TResult Function(_LocationDetailLoad value) locationDetailLoad,
    required TResult Function(_ObservationLoad value) observationLoad,
    required TResult Function(_IsEnterManuallyLoad value) isEnterManuallyLoad,
  }) {
    return cropLoad(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Load value)? load,
    TResult? Function(_Reset value)? reset,
    TResult? Function(_DistrictLoad value)? districtLoad,
    TResult? Function(_MunicipalityLoad value)? municipalityLoad,
    TResult? Function(_CropLoad value)? cropLoad,
    TResult? Function(_CropDetailLoad value)? cropDetailLoad,
    TResult? Function(_LocationDetailLoad value)? locationDetailLoad,
    TResult? Function(_ObservationLoad value)? observationLoad,
    TResult? Function(_IsEnterManuallyLoad value)? isEnterManuallyLoad,
  }) {
    return cropLoad?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_Reset value)? reset,
    TResult Function(_DistrictLoad value)? districtLoad,
    TResult Function(_MunicipalityLoad value)? municipalityLoad,
    TResult Function(_CropLoad value)? cropLoad,
    TResult Function(_CropDetailLoad value)? cropDetailLoad,
    TResult Function(_LocationDetailLoad value)? locationDetailLoad,
    TResult Function(_ObservationLoad value)? observationLoad,
    TResult Function(_IsEnterManuallyLoad value)? isEnterManuallyLoad,
    required TResult orElse(),
  }) {
    if (cropLoad != null) {
      return cropLoad(this);
    }
    return orElse();
  }
}

abstract class _CropLoad implements ObservationEvent {
  const factory _CropLoad() = _$CropLoadImpl;
}

/// @nodoc
abstract class _$$CropDetailLoadImplCopyWith<$Res> {
  factory _$$CropDetailLoadImplCopyWith(_$CropDetailLoadImpl value,
          $Res Function(_$CropDetailLoadImpl) then) =
      __$$CropDetailLoadImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int cropId});
}

/// @nodoc
class __$$CropDetailLoadImplCopyWithImpl<$Res>
    extends _$ObservationEventCopyWithImpl<$Res, _$CropDetailLoadImpl>
    implements _$$CropDetailLoadImplCopyWith<$Res> {
  __$$CropDetailLoadImplCopyWithImpl(
      _$CropDetailLoadImpl _value, $Res Function(_$CropDetailLoadImpl) _then)
      : super(_value, _then);

  /// Create a copy of ObservationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cropId = null,
  }) {
    return _then(_$CropDetailLoadImpl(
      null == cropId
          ? _value.cropId
          : cropId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CropDetailLoadImpl implements _CropDetailLoad {
  const _$CropDetailLoadImpl(this.cropId);

  @override
  final int cropId;

  @override
  String toString() {
    return 'ObservationEvent.cropDetailLoad(cropId: $cropId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CropDetailLoadImpl &&
            (identical(other.cropId, cropId) || other.cropId == cropId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cropId);

  /// Create a copy of ObservationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CropDetailLoadImplCopyWith<_$CropDetailLoadImpl> get copyWith =>
      __$$CropDetailLoadImplCopyWithImpl<_$CropDetailLoadImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() reset,
    required TResult Function(int provinceId) districtLoad,
    required TResult Function(int districtId) municipalityLoad,
    required TResult Function() cropLoad,
    required TResult Function(int cropId) cropDetailLoad,
    required TResult Function(String lat, String long) locationDetailLoad,
    required TResult Function(PostingObservationModel observationModel)
        observationLoad,
    required TResult Function(bool value) isEnterManuallyLoad,
  }) {
    return cropDetailLoad(cropId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? reset,
    TResult? Function(int provinceId)? districtLoad,
    TResult? Function(int districtId)? municipalityLoad,
    TResult? Function()? cropLoad,
    TResult? Function(int cropId)? cropDetailLoad,
    TResult? Function(String lat, String long)? locationDetailLoad,
    TResult? Function(PostingObservationModel observationModel)?
        observationLoad,
    TResult? Function(bool value)? isEnterManuallyLoad,
  }) {
    return cropDetailLoad?.call(cropId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? reset,
    TResult Function(int provinceId)? districtLoad,
    TResult Function(int districtId)? municipalityLoad,
    TResult Function()? cropLoad,
    TResult Function(int cropId)? cropDetailLoad,
    TResult Function(String lat, String long)? locationDetailLoad,
    TResult Function(PostingObservationModel observationModel)? observationLoad,
    TResult Function(bool value)? isEnterManuallyLoad,
    required TResult orElse(),
  }) {
    if (cropDetailLoad != null) {
      return cropDetailLoad(cropId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_Reset value) reset,
    required TResult Function(_DistrictLoad value) districtLoad,
    required TResult Function(_MunicipalityLoad value) municipalityLoad,
    required TResult Function(_CropLoad value) cropLoad,
    required TResult Function(_CropDetailLoad value) cropDetailLoad,
    required TResult Function(_LocationDetailLoad value) locationDetailLoad,
    required TResult Function(_ObservationLoad value) observationLoad,
    required TResult Function(_IsEnterManuallyLoad value) isEnterManuallyLoad,
  }) {
    return cropDetailLoad(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Load value)? load,
    TResult? Function(_Reset value)? reset,
    TResult? Function(_DistrictLoad value)? districtLoad,
    TResult? Function(_MunicipalityLoad value)? municipalityLoad,
    TResult? Function(_CropLoad value)? cropLoad,
    TResult? Function(_CropDetailLoad value)? cropDetailLoad,
    TResult? Function(_LocationDetailLoad value)? locationDetailLoad,
    TResult? Function(_ObservationLoad value)? observationLoad,
    TResult? Function(_IsEnterManuallyLoad value)? isEnterManuallyLoad,
  }) {
    return cropDetailLoad?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_Reset value)? reset,
    TResult Function(_DistrictLoad value)? districtLoad,
    TResult Function(_MunicipalityLoad value)? municipalityLoad,
    TResult Function(_CropLoad value)? cropLoad,
    TResult Function(_CropDetailLoad value)? cropDetailLoad,
    TResult Function(_LocationDetailLoad value)? locationDetailLoad,
    TResult Function(_ObservationLoad value)? observationLoad,
    TResult Function(_IsEnterManuallyLoad value)? isEnterManuallyLoad,
    required TResult orElse(),
  }) {
    if (cropDetailLoad != null) {
      return cropDetailLoad(this);
    }
    return orElse();
  }
}

abstract class _CropDetailLoad implements ObservationEvent {
  const factory _CropDetailLoad(final int cropId) = _$CropDetailLoadImpl;

  int get cropId;

  /// Create a copy of ObservationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CropDetailLoadImplCopyWith<_$CropDetailLoadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LocationDetailLoadImplCopyWith<$Res> {
  factory _$$LocationDetailLoadImplCopyWith(_$LocationDetailLoadImpl value,
          $Res Function(_$LocationDetailLoadImpl) then) =
      __$$LocationDetailLoadImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String lat, String long});
}

/// @nodoc
class __$$LocationDetailLoadImplCopyWithImpl<$Res>
    extends _$ObservationEventCopyWithImpl<$Res, _$LocationDetailLoadImpl>
    implements _$$LocationDetailLoadImplCopyWith<$Res> {
  __$$LocationDetailLoadImplCopyWithImpl(_$LocationDetailLoadImpl _value,
      $Res Function(_$LocationDetailLoadImpl) _then)
      : super(_value, _then);

  /// Create a copy of ObservationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? long = null,
  }) {
    return _then(_$LocationDetailLoadImpl(
      null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String,
      null == long
          ? _value.long
          : long // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LocationDetailLoadImpl implements _LocationDetailLoad {
  const _$LocationDetailLoadImpl(this.lat, this.long);

  @override
  final String lat;
  @override
  final String long;

  @override
  String toString() {
    return 'ObservationEvent.locationDetailLoad(lat: $lat, long: $long)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationDetailLoadImpl &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.long, long) || other.long == long));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lat, long);

  /// Create a copy of ObservationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationDetailLoadImplCopyWith<_$LocationDetailLoadImpl> get copyWith =>
      __$$LocationDetailLoadImplCopyWithImpl<_$LocationDetailLoadImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() reset,
    required TResult Function(int provinceId) districtLoad,
    required TResult Function(int districtId) municipalityLoad,
    required TResult Function() cropLoad,
    required TResult Function(int cropId) cropDetailLoad,
    required TResult Function(String lat, String long) locationDetailLoad,
    required TResult Function(PostingObservationModel observationModel)
        observationLoad,
    required TResult Function(bool value) isEnterManuallyLoad,
  }) {
    return locationDetailLoad(lat, long);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? reset,
    TResult? Function(int provinceId)? districtLoad,
    TResult? Function(int districtId)? municipalityLoad,
    TResult? Function()? cropLoad,
    TResult? Function(int cropId)? cropDetailLoad,
    TResult? Function(String lat, String long)? locationDetailLoad,
    TResult? Function(PostingObservationModel observationModel)?
        observationLoad,
    TResult? Function(bool value)? isEnterManuallyLoad,
  }) {
    return locationDetailLoad?.call(lat, long);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? reset,
    TResult Function(int provinceId)? districtLoad,
    TResult Function(int districtId)? municipalityLoad,
    TResult Function()? cropLoad,
    TResult Function(int cropId)? cropDetailLoad,
    TResult Function(String lat, String long)? locationDetailLoad,
    TResult Function(PostingObservationModel observationModel)? observationLoad,
    TResult Function(bool value)? isEnterManuallyLoad,
    required TResult orElse(),
  }) {
    if (locationDetailLoad != null) {
      return locationDetailLoad(lat, long);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_Reset value) reset,
    required TResult Function(_DistrictLoad value) districtLoad,
    required TResult Function(_MunicipalityLoad value) municipalityLoad,
    required TResult Function(_CropLoad value) cropLoad,
    required TResult Function(_CropDetailLoad value) cropDetailLoad,
    required TResult Function(_LocationDetailLoad value) locationDetailLoad,
    required TResult Function(_ObservationLoad value) observationLoad,
    required TResult Function(_IsEnterManuallyLoad value) isEnterManuallyLoad,
  }) {
    return locationDetailLoad(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Load value)? load,
    TResult? Function(_Reset value)? reset,
    TResult? Function(_DistrictLoad value)? districtLoad,
    TResult? Function(_MunicipalityLoad value)? municipalityLoad,
    TResult? Function(_CropLoad value)? cropLoad,
    TResult? Function(_CropDetailLoad value)? cropDetailLoad,
    TResult? Function(_LocationDetailLoad value)? locationDetailLoad,
    TResult? Function(_ObservationLoad value)? observationLoad,
    TResult? Function(_IsEnterManuallyLoad value)? isEnterManuallyLoad,
  }) {
    return locationDetailLoad?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_Reset value)? reset,
    TResult Function(_DistrictLoad value)? districtLoad,
    TResult Function(_MunicipalityLoad value)? municipalityLoad,
    TResult Function(_CropLoad value)? cropLoad,
    TResult Function(_CropDetailLoad value)? cropDetailLoad,
    TResult Function(_LocationDetailLoad value)? locationDetailLoad,
    TResult Function(_ObservationLoad value)? observationLoad,
    TResult Function(_IsEnterManuallyLoad value)? isEnterManuallyLoad,
    required TResult orElse(),
  }) {
    if (locationDetailLoad != null) {
      return locationDetailLoad(this);
    }
    return orElse();
  }
}

abstract class _LocationDetailLoad implements ObservationEvent {
  const factory _LocationDetailLoad(final String lat, final String long) =
      _$LocationDetailLoadImpl;

  String get lat;
  String get long;

  /// Create a copy of ObservationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocationDetailLoadImplCopyWith<_$LocationDetailLoadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ObservationLoadImplCopyWith<$Res> {
  factory _$$ObservationLoadImplCopyWith(_$ObservationLoadImpl value,
          $Res Function(_$ObservationLoadImpl) then) =
      __$$ObservationLoadImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PostingObservationModel observationModel});

  $PostingObservationModelCopyWith<$Res> get observationModel;
}

/// @nodoc
class __$$ObservationLoadImplCopyWithImpl<$Res>
    extends _$ObservationEventCopyWithImpl<$Res, _$ObservationLoadImpl>
    implements _$$ObservationLoadImplCopyWith<$Res> {
  __$$ObservationLoadImplCopyWithImpl(
      _$ObservationLoadImpl _value, $Res Function(_$ObservationLoadImpl) _then)
      : super(_value, _then);

  /// Create a copy of ObservationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? observationModel = null,
  }) {
    return _then(_$ObservationLoadImpl(
      null == observationModel
          ? _value.observationModel
          : observationModel // ignore: cast_nullable_to_non_nullable
              as PostingObservationModel,
    ));
  }

  /// Create a copy of ObservationEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PostingObservationModelCopyWith<$Res> get observationModel {
    return $PostingObservationModelCopyWith<$Res>(_value.observationModel,
        (value) {
      return _then(_value.copyWith(observationModel: value));
    });
  }
}

/// @nodoc

class _$ObservationLoadImpl implements _ObservationLoad {
  const _$ObservationLoadImpl(this.observationModel);

  @override
  final PostingObservationModel observationModel;

  @override
  String toString() {
    return 'ObservationEvent.observationLoad(observationModel: $observationModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ObservationLoadImpl &&
            (identical(other.observationModel, observationModel) ||
                other.observationModel == observationModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, observationModel);

  /// Create a copy of ObservationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ObservationLoadImplCopyWith<_$ObservationLoadImpl> get copyWith =>
      __$$ObservationLoadImplCopyWithImpl<_$ObservationLoadImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() reset,
    required TResult Function(int provinceId) districtLoad,
    required TResult Function(int districtId) municipalityLoad,
    required TResult Function() cropLoad,
    required TResult Function(int cropId) cropDetailLoad,
    required TResult Function(String lat, String long) locationDetailLoad,
    required TResult Function(PostingObservationModel observationModel)
        observationLoad,
    required TResult Function(bool value) isEnterManuallyLoad,
  }) {
    return observationLoad(observationModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? reset,
    TResult? Function(int provinceId)? districtLoad,
    TResult? Function(int districtId)? municipalityLoad,
    TResult? Function()? cropLoad,
    TResult? Function(int cropId)? cropDetailLoad,
    TResult? Function(String lat, String long)? locationDetailLoad,
    TResult? Function(PostingObservationModel observationModel)?
        observationLoad,
    TResult? Function(bool value)? isEnterManuallyLoad,
  }) {
    return observationLoad?.call(observationModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? reset,
    TResult Function(int provinceId)? districtLoad,
    TResult Function(int districtId)? municipalityLoad,
    TResult Function()? cropLoad,
    TResult Function(int cropId)? cropDetailLoad,
    TResult Function(String lat, String long)? locationDetailLoad,
    TResult Function(PostingObservationModel observationModel)? observationLoad,
    TResult Function(bool value)? isEnterManuallyLoad,
    required TResult orElse(),
  }) {
    if (observationLoad != null) {
      return observationLoad(observationModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_Reset value) reset,
    required TResult Function(_DistrictLoad value) districtLoad,
    required TResult Function(_MunicipalityLoad value) municipalityLoad,
    required TResult Function(_CropLoad value) cropLoad,
    required TResult Function(_CropDetailLoad value) cropDetailLoad,
    required TResult Function(_LocationDetailLoad value) locationDetailLoad,
    required TResult Function(_ObservationLoad value) observationLoad,
    required TResult Function(_IsEnterManuallyLoad value) isEnterManuallyLoad,
  }) {
    return observationLoad(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Load value)? load,
    TResult? Function(_Reset value)? reset,
    TResult? Function(_DistrictLoad value)? districtLoad,
    TResult? Function(_MunicipalityLoad value)? municipalityLoad,
    TResult? Function(_CropLoad value)? cropLoad,
    TResult? Function(_CropDetailLoad value)? cropDetailLoad,
    TResult? Function(_LocationDetailLoad value)? locationDetailLoad,
    TResult? Function(_ObservationLoad value)? observationLoad,
    TResult? Function(_IsEnterManuallyLoad value)? isEnterManuallyLoad,
  }) {
    return observationLoad?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_Reset value)? reset,
    TResult Function(_DistrictLoad value)? districtLoad,
    TResult Function(_MunicipalityLoad value)? municipalityLoad,
    TResult Function(_CropLoad value)? cropLoad,
    TResult Function(_CropDetailLoad value)? cropDetailLoad,
    TResult Function(_LocationDetailLoad value)? locationDetailLoad,
    TResult Function(_ObservationLoad value)? observationLoad,
    TResult Function(_IsEnterManuallyLoad value)? isEnterManuallyLoad,
    required TResult orElse(),
  }) {
    if (observationLoad != null) {
      return observationLoad(this);
    }
    return orElse();
  }
}

abstract class _ObservationLoad implements ObservationEvent {
  const factory _ObservationLoad(
      final PostingObservationModel observationModel) = _$ObservationLoadImpl;

  PostingObservationModel get observationModel;

  /// Create a copy of ObservationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ObservationLoadImplCopyWith<_$ObservationLoadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$IsEnterManuallyLoadImplCopyWith<$Res> {
  factory _$$IsEnterManuallyLoadImplCopyWith(_$IsEnterManuallyLoadImpl value,
          $Res Function(_$IsEnterManuallyLoadImpl) then) =
      __$$IsEnterManuallyLoadImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool value});
}

/// @nodoc
class __$$IsEnterManuallyLoadImplCopyWithImpl<$Res>
    extends _$ObservationEventCopyWithImpl<$Res, _$IsEnterManuallyLoadImpl>
    implements _$$IsEnterManuallyLoadImplCopyWith<$Res> {
  __$$IsEnterManuallyLoadImplCopyWithImpl(_$IsEnterManuallyLoadImpl _value,
      $Res Function(_$IsEnterManuallyLoadImpl) _then)
      : super(_value, _then);

  /// Create a copy of ObservationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$IsEnterManuallyLoadImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$IsEnterManuallyLoadImpl implements _IsEnterManuallyLoad {
  const _$IsEnterManuallyLoadImpl(this.value);

  @override
  final bool value;

  @override
  String toString() {
    return 'ObservationEvent.isEnterManuallyLoad(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IsEnterManuallyLoadImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of ObservationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IsEnterManuallyLoadImplCopyWith<_$IsEnterManuallyLoadImpl> get copyWith =>
      __$$IsEnterManuallyLoadImplCopyWithImpl<_$IsEnterManuallyLoadImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() reset,
    required TResult Function(int provinceId) districtLoad,
    required TResult Function(int districtId) municipalityLoad,
    required TResult Function() cropLoad,
    required TResult Function(int cropId) cropDetailLoad,
    required TResult Function(String lat, String long) locationDetailLoad,
    required TResult Function(PostingObservationModel observationModel)
        observationLoad,
    required TResult Function(bool value) isEnterManuallyLoad,
  }) {
    return isEnterManuallyLoad(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? reset,
    TResult? Function(int provinceId)? districtLoad,
    TResult? Function(int districtId)? municipalityLoad,
    TResult? Function()? cropLoad,
    TResult? Function(int cropId)? cropDetailLoad,
    TResult? Function(String lat, String long)? locationDetailLoad,
    TResult? Function(PostingObservationModel observationModel)?
        observationLoad,
    TResult? Function(bool value)? isEnterManuallyLoad,
  }) {
    return isEnterManuallyLoad?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? reset,
    TResult Function(int provinceId)? districtLoad,
    TResult Function(int districtId)? municipalityLoad,
    TResult Function()? cropLoad,
    TResult Function(int cropId)? cropDetailLoad,
    TResult Function(String lat, String long)? locationDetailLoad,
    TResult Function(PostingObservationModel observationModel)? observationLoad,
    TResult Function(bool value)? isEnterManuallyLoad,
    required TResult orElse(),
  }) {
    if (isEnterManuallyLoad != null) {
      return isEnterManuallyLoad(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_Reset value) reset,
    required TResult Function(_DistrictLoad value) districtLoad,
    required TResult Function(_MunicipalityLoad value) municipalityLoad,
    required TResult Function(_CropLoad value) cropLoad,
    required TResult Function(_CropDetailLoad value) cropDetailLoad,
    required TResult Function(_LocationDetailLoad value) locationDetailLoad,
    required TResult Function(_ObservationLoad value) observationLoad,
    required TResult Function(_IsEnterManuallyLoad value) isEnterManuallyLoad,
  }) {
    return isEnterManuallyLoad(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Load value)? load,
    TResult? Function(_Reset value)? reset,
    TResult? Function(_DistrictLoad value)? districtLoad,
    TResult? Function(_MunicipalityLoad value)? municipalityLoad,
    TResult? Function(_CropLoad value)? cropLoad,
    TResult? Function(_CropDetailLoad value)? cropDetailLoad,
    TResult? Function(_LocationDetailLoad value)? locationDetailLoad,
    TResult? Function(_ObservationLoad value)? observationLoad,
    TResult? Function(_IsEnterManuallyLoad value)? isEnterManuallyLoad,
  }) {
    return isEnterManuallyLoad?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_Reset value)? reset,
    TResult Function(_DistrictLoad value)? districtLoad,
    TResult Function(_MunicipalityLoad value)? municipalityLoad,
    TResult Function(_CropLoad value)? cropLoad,
    TResult Function(_CropDetailLoad value)? cropDetailLoad,
    TResult Function(_LocationDetailLoad value)? locationDetailLoad,
    TResult Function(_ObservationLoad value)? observationLoad,
    TResult Function(_IsEnterManuallyLoad value)? isEnterManuallyLoad,
    required TResult orElse(),
  }) {
    if (isEnterManuallyLoad != null) {
      return isEnterManuallyLoad(this);
    }
    return orElse();
  }
}

abstract class _IsEnterManuallyLoad implements ObservationEvent {
  const factory _IsEnterManuallyLoad(final bool value) =
      _$IsEnterManuallyLoadImpl;

  bool get value;

  /// Create a copy of ObservationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IsEnterManuallyLoadImplCopyWith<_$IsEnterManuallyLoadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ObservationState {
  List<ProvinceModel> get provinceList => throw _privateConstructorUsedError;
  List<MunicipalityModel> get municipalityList =>
      throw _privateConstructorUsedError;
  DistrictsModel? get districts => throw _privateConstructorUsedError;
  List<CropsModel> get crops => throw _privateConstructorUsedError;
  List<Stage> get stages => throw _privateConstructorUsedError;
  List<ManagementPractice> get managementPractices =>
      throw _privateConstructorUsedError;
  List<PotentialPest> get potentialPests => throw _privateConstructorUsedError;
  List<Variety> get varieties => throw _privateConstructorUsedError;
  List<WaterResource> get waterResource => throw _privateConstructorUsedError;
  LocationsModel? get locations => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  bool get isEnterManually => throw _privateConstructorUsedError;
  bool get isLocationLoaded => throw _privateConstructorUsedError;
  bool get hasObservationSubmitted => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<ProvinceModel> provinceList,
            List<MunicipalityModel> municipalityList,
            DistrictsModel? districts,
            List<CropsModel> crops,
            List<Stage> stages,
            List<ManagementPractice> managementPractices,
            List<PotentialPest> potentialPests,
            List<Variety> varieties,
            List<WaterResource> waterResource,
            LocationsModel? locations,
            bool isLoading,
            bool hasError,
            bool isEnterManually,
            bool isLocationLoaded,
            bool hasObservationSubmitted)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<ProvinceModel> provinceList,
            List<MunicipalityModel> municipalityList,
            DistrictsModel? districts,
            List<CropsModel> crops,
            List<Stage> stages,
            List<ManagementPractice> managementPractices,
            List<PotentialPest> potentialPests,
            List<Variety> varieties,
            List<WaterResource> waterResource,
            LocationsModel? locations,
            bool isLoading,
            bool hasError,
            bool isEnterManually,
            bool isLocationLoaded,
            bool hasObservationSubmitted)?
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<ProvinceModel> provinceList,
            List<MunicipalityModel> municipalityList,
            DistrictsModel? districts,
            List<CropsModel> crops,
            List<Stage> stages,
            List<ManagementPractice> managementPractices,
            List<PotentialPest> potentialPests,
            List<Variety> varieties,
            List<WaterResource> waterResource,
            LocationsModel? locations,
            bool isLoading,
            bool hasError,
            bool isEnterManually,
            bool isLocationLoaded,
            bool hasObservationSubmitted)?
        loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of ObservationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ObservationStateCopyWith<ObservationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ObservationStateCopyWith<$Res> {
  factory $ObservationStateCopyWith(
          ObservationState value, $Res Function(ObservationState) then) =
      _$ObservationStateCopyWithImpl<$Res, ObservationState>;
  @useResult
  $Res call(
      {List<ProvinceModel> provinceList,
      List<MunicipalityModel> municipalityList,
      DistrictsModel? districts,
      List<CropsModel> crops,
      List<Stage> stages,
      List<ManagementPractice> managementPractices,
      List<PotentialPest> potentialPests,
      List<Variety> varieties,
      List<WaterResource> waterResource,
      LocationsModel? locations,
      bool isLoading,
      bool hasError,
      bool isEnterManually,
      bool isLocationLoaded,
      bool hasObservationSubmitted});

  $DistrictsModelCopyWith<$Res>? get districts;
  $LocationsModelCopyWith<$Res>? get locations;
}

/// @nodoc
class _$ObservationStateCopyWithImpl<$Res, $Val extends ObservationState>
    implements $ObservationStateCopyWith<$Res> {
  _$ObservationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ObservationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? provinceList = null,
    Object? municipalityList = null,
    Object? districts = freezed,
    Object? crops = null,
    Object? stages = null,
    Object? managementPractices = null,
    Object? potentialPests = null,
    Object? varieties = null,
    Object? waterResource = null,
    Object? locations = freezed,
    Object? isLoading = null,
    Object? hasError = null,
    Object? isEnterManually = null,
    Object? isLocationLoaded = null,
    Object? hasObservationSubmitted = null,
  }) {
    return _then(_value.copyWith(
      provinceList: null == provinceList
          ? _value.provinceList
          : provinceList // ignore: cast_nullable_to_non_nullable
              as List<ProvinceModel>,
      municipalityList: null == municipalityList
          ? _value.municipalityList
          : municipalityList // ignore: cast_nullable_to_non_nullable
              as List<MunicipalityModel>,
      districts: freezed == districts
          ? _value.districts
          : districts // ignore: cast_nullable_to_non_nullable
              as DistrictsModel?,
      crops: null == crops
          ? _value.crops
          : crops // ignore: cast_nullable_to_non_nullable
              as List<CropsModel>,
      stages: null == stages
          ? _value.stages
          : stages // ignore: cast_nullable_to_non_nullable
              as List<Stage>,
      managementPractices: null == managementPractices
          ? _value.managementPractices
          : managementPractices // ignore: cast_nullable_to_non_nullable
              as List<ManagementPractice>,
      potentialPests: null == potentialPests
          ? _value.potentialPests
          : potentialPests // ignore: cast_nullable_to_non_nullable
              as List<PotentialPest>,
      varieties: null == varieties
          ? _value.varieties
          : varieties // ignore: cast_nullable_to_non_nullable
              as List<Variety>,
      waterResource: null == waterResource
          ? _value.waterResource
          : waterResource // ignore: cast_nullable_to_non_nullable
              as List<WaterResource>,
      locations: freezed == locations
          ? _value.locations
          : locations // ignore: cast_nullable_to_non_nullable
              as LocationsModel?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      isEnterManually: null == isEnterManually
          ? _value.isEnterManually
          : isEnterManually // ignore: cast_nullable_to_non_nullable
              as bool,
      isLocationLoaded: null == isLocationLoaded
          ? _value.isLocationLoaded
          : isLocationLoaded // ignore: cast_nullable_to_non_nullable
              as bool,
      hasObservationSubmitted: null == hasObservationSubmitted
          ? _value.hasObservationSubmitted
          : hasObservationSubmitted // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of ObservationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DistrictsModelCopyWith<$Res>? get districts {
    if (_value.districts == null) {
      return null;
    }

    return $DistrictsModelCopyWith<$Res>(_value.districts!, (value) {
      return _then(_value.copyWith(districts: value) as $Val);
    });
  }

  /// Create a copy of ObservationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationsModelCopyWith<$Res>? get locations {
    if (_value.locations == null) {
      return null;
    }

    return $LocationsModelCopyWith<$Res>(_value.locations!, (value) {
      return _then(_value.copyWith(locations: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res>
    implements $ObservationStateCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ProvinceModel> provinceList,
      List<MunicipalityModel> municipalityList,
      DistrictsModel? districts,
      List<CropsModel> crops,
      List<Stage> stages,
      List<ManagementPractice> managementPractices,
      List<PotentialPest> potentialPests,
      List<Variety> varieties,
      List<WaterResource> waterResource,
      LocationsModel? locations,
      bool isLoading,
      bool hasError,
      bool isEnterManually,
      bool isLocationLoaded,
      bool hasObservationSubmitted});

  @override
  $DistrictsModelCopyWith<$Res>? get districts;
  @override
  $LocationsModelCopyWith<$Res>? get locations;
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$ObservationStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ObservationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? provinceList = null,
    Object? municipalityList = null,
    Object? districts = freezed,
    Object? crops = null,
    Object? stages = null,
    Object? managementPractices = null,
    Object? potentialPests = null,
    Object? varieties = null,
    Object? waterResource = null,
    Object? locations = freezed,
    Object? isLoading = null,
    Object? hasError = null,
    Object? isEnterManually = null,
    Object? isLocationLoaded = null,
    Object? hasObservationSubmitted = null,
  }) {
    return _then(_$LoadedImpl(
      provinceList: null == provinceList
          ? _value._provinceList
          : provinceList // ignore: cast_nullable_to_non_nullable
              as List<ProvinceModel>,
      municipalityList: null == municipalityList
          ? _value._municipalityList
          : municipalityList // ignore: cast_nullable_to_non_nullable
              as List<MunicipalityModel>,
      districts: freezed == districts
          ? _value.districts
          : districts // ignore: cast_nullable_to_non_nullable
              as DistrictsModel?,
      crops: null == crops
          ? _value._crops
          : crops // ignore: cast_nullable_to_non_nullable
              as List<CropsModel>,
      stages: null == stages
          ? _value._stages
          : stages // ignore: cast_nullable_to_non_nullable
              as List<Stage>,
      managementPractices: null == managementPractices
          ? _value._managementPractices
          : managementPractices // ignore: cast_nullable_to_non_nullable
              as List<ManagementPractice>,
      potentialPests: null == potentialPests
          ? _value._potentialPests
          : potentialPests // ignore: cast_nullable_to_non_nullable
              as List<PotentialPest>,
      varieties: null == varieties
          ? _value._varieties
          : varieties // ignore: cast_nullable_to_non_nullable
              as List<Variety>,
      waterResource: null == waterResource
          ? _value._waterResource
          : waterResource // ignore: cast_nullable_to_non_nullable
              as List<WaterResource>,
      locations: freezed == locations
          ? _value.locations
          : locations // ignore: cast_nullable_to_non_nullable
              as LocationsModel?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      isEnterManually: null == isEnterManually
          ? _value.isEnterManually
          : isEnterManually // ignore: cast_nullable_to_non_nullable
              as bool,
      isLocationLoaded: null == isLocationLoaded
          ? _value.isLocationLoaded
          : isLocationLoaded // ignore: cast_nullable_to_non_nullable
              as bool,
      hasObservationSubmitted: null == hasObservationSubmitted
          ? _value.hasObservationSubmitted
          : hasObservationSubmitted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(
      {final List<ProvinceModel> provinceList = const [],
      final List<MunicipalityModel> municipalityList = const [],
      this.districts,
      final List<CropsModel> crops = const [],
      final List<Stage> stages = const [],
      final List<ManagementPractice> managementPractices = const [],
      final List<PotentialPest> potentialPests = const [],
      final List<Variety> varieties = const [],
      final List<WaterResource> waterResource = const [],
      this.locations,
      this.isLoading = false,
      this.hasError = false,
      this.isEnterManually = false,
      this.isLocationLoaded = false,
      this.hasObservationSubmitted = false})
      : _provinceList = provinceList,
        _municipalityList = municipalityList,
        _crops = crops,
        _stages = stages,
        _managementPractices = managementPractices,
        _potentialPests = potentialPests,
        _varieties = varieties,
        _waterResource = waterResource;

  final List<ProvinceModel> _provinceList;
  @override
  @JsonKey()
  List<ProvinceModel> get provinceList {
    if (_provinceList is EqualUnmodifiableListView) return _provinceList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_provinceList);
  }

  final List<MunicipalityModel> _municipalityList;
  @override
  @JsonKey()
  List<MunicipalityModel> get municipalityList {
    if (_municipalityList is EqualUnmodifiableListView)
      return _municipalityList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_municipalityList);
  }

  @override
  final DistrictsModel? districts;
  final List<CropsModel> _crops;
  @override
  @JsonKey()
  List<CropsModel> get crops {
    if (_crops is EqualUnmodifiableListView) return _crops;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_crops);
  }

  final List<Stage> _stages;
  @override
  @JsonKey()
  List<Stage> get stages {
    if (_stages is EqualUnmodifiableListView) return _stages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stages);
  }

  final List<ManagementPractice> _managementPractices;
  @override
  @JsonKey()
  List<ManagementPractice> get managementPractices {
    if (_managementPractices is EqualUnmodifiableListView)
      return _managementPractices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_managementPractices);
  }

  final List<PotentialPest> _potentialPests;
  @override
  @JsonKey()
  List<PotentialPest> get potentialPests {
    if (_potentialPests is EqualUnmodifiableListView) return _potentialPests;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_potentialPests);
  }

  final List<Variety> _varieties;
  @override
  @JsonKey()
  List<Variety> get varieties {
    if (_varieties is EqualUnmodifiableListView) return _varieties;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_varieties);
  }

  final List<WaterResource> _waterResource;
  @override
  @JsonKey()
  List<WaterResource> get waterResource {
    if (_waterResource is EqualUnmodifiableListView) return _waterResource;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_waterResource);
  }

  @override
  final LocationsModel? locations;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool hasError;
  @override
  @JsonKey()
  final bool isEnterManually;
  @override
  @JsonKey()
  final bool isLocationLoaded;
  @override
  @JsonKey()
  final bool hasObservationSubmitted;

  @override
  String toString() {
    return 'ObservationState.loaded(provinceList: $provinceList, municipalityList: $municipalityList, districts: $districts, crops: $crops, stages: $stages, managementPractices: $managementPractices, potentialPests: $potentialPests, varieties: $varieties, waterResource: $waterResource, locations: $locations, isLoading: $isLoading, hasError: $hasError, isEnterManually: $isEnterManually, isLocationLoaded: $isLocationLoaded, hasObservationSubmitted: $hasObservationSubmitted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._provinceList, _provinceList) &&
            const DeepCollectionEquality()
                .equals(other._municipalityList, _municipalityList) &&
            (identical(other.districts, districts) ||
                other.districts == districts) &&
            const DeepCollectionEquality().equals(other._crops, _crops) &&
            const DeepCollectionEquality().equals(other._stages, _stages) &&
            const DeepCollectionEquality()
                .equals(other._managementPractices, _managementPractices) &&
            const DeepCollectionEquality()
                .equals(other._potentialPests, _potentialPests) &&
            const DeepCollectionEquality()
                .equals(other._varieties, _varieties) &&
            const DeepCollectionEquality()
                .equals(other._waterResource, _waterResource) &&
            (identical(other.locations, locations) ||
                other.locations == locations) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError) &&
            (identical(other.isEnterManually, isEnterManually) ||
                other.isEnterManually == isEnterManually) &&
            (identical(other.isLocationLoaded, isLocationLoaded) ||
                other.isLocationLoaded == isLocationLoaded) &&
            (identical(
                    other.hasObservationSubmitted, hasObservationSubmitted) ||
                other.hasObservationSubmitted == hasObservationSubmitted));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_provinceList),
      const DeepCollectionEquality().hash(_municipalityList),
      districts,
      const DeepCollectionEquality().hash(_crops),
      const DeepCollectionEquality().hash(_stages),
      const DeepCollectionEquality().hash(_managementPractices),
      const DeepCollectionEquality().hash(_potentialPests),
      const DeepCollectionEquality().hash(_varieties),
      const DeepCollectionEquality().hash(_waterResource),
      locations,
      isLoading,
      hasError,
      isEnterManually,
      isLocationLoaded,
      hasObservationSubmitted);

  /// Create a copy of ObservationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<ProvinceModel> provinceList,
            List<MunicipalityModel> municipalityList,
            DistrictsModel? districts,
            List<CropsModel> crops,
            List<Stage> stages,
            List<ManagementPractice> managementPractices,
            List<PotentialPest> potentialPests,
            List<Variety> varieties,
            List<WaterResource> waterResource,
            LocationsModel? locations,
            bool isLoading,
            bool hasError,
            bool isEnterManually,
            bool isLocationLoaded,
            bool hasObservationSubmitted)
        loaded,
  }) {
    return loaded(
        provinceList,
        municipalityList,
        districts,
        crops,
        stages,
        managementPractices,
        potentialPests,
        varieties,
        waterResource,
        locations,
        isLoading,
        hasError,
        isEnterManually,
        isLocationLoaded,
        hasObservationSubmitted);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<ProvinceModel> provinceList,
            List<MunicipalityModel> municipalityList,
            DistrictsModel? districts,
            List<CropsModel> crops,
            List<Stage> stages,
            List<ManagementPractice> managementPractices,
            List<PotentialPest> potentialPests,
            List<Variety> varieties,
            List<WaterResource> waterResource,
            LocationsModel? locations,
            bool isLoading,
            bool hasError,
            bool isEnterManually,
            bool isLocationLoaded,
            bool hasObservationSubmitted)?
        loaded,
  }) {
    return loaded?.call(
        provinceList,
        municipalityList,
        districts,
        crops,
        stages,
        managementPractices,
        potentialPests,
        varieties,
        waterResource,
        locations,
        isLoading,
        hasError,
        isEnterManually,
        isLocationLoaded,
        hasObservationSubmitted);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<ProvinceModel> provinceList,
            List<MunicipalityModel> municipalityList,
            DistrictsModel? districts,
            List<CropsModel> crops,
            List<Stage> stages,
            List<ManagementPractice> managementPractices,
            List<PotentialPest> potentialPests,
            List<Variety> varieties,
            List<WaterResource> waterResource,
            LocationsModel? locations,
            bool isLoading,
            bool hasError,
            bool isEnterManually,
            bool isLocationLoaded,
            bool hasObservationSubmitted)?
        loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(
          provinceList,
          municipalityList,
          districts,
          crops,
          stages,
          managementPractices,
          potentialPests,
          varieties,
          waterResource,
          locations,
          isLoading,
          hasError,
          isEnterManually,
          isLocationLoaded,
          hasObservationSubmitted);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements ObservationState {
  const factory _Loaded(
      {final List<ProvinceModel> provinceList,
      final List<MunicipalityModel> municipalityList,
      final DistrictsModel? districts,
      final List<CropsModel> crops,
      final List<Stage> stages,
      final List<ManagementPractice> managementPractices,
      final List<PotentialPest> potentialPests,
      final List<Variety> varieties,
      final List<WaterResource> waterResource,
      final LocationsModel? locations,
      final bool isLoading,
      final bool hasError,
      final bool isEnterManually,
      final bool isLocationLoaded,
      final bool hasObservationSubmitted}) = _$LoadedImpl;

  @override
  List<ProvinceModel> get provinceList;
  @override
  List<MunicipalityModel> get municipalityList;
  @override
  DistrictsModel? get districts;
  @override
  List<CropsModel> get crops;
  @override
  List<Stage> get stages;
  @override
  List<ManagementPractice> get managementPractices;
  @override
  List<PotentialPest> get potentialPests;
  @override
  List<Variety> get varieties;
  @override
  List<WaterResource> get waterResource;
  @override
  LocationsModel? get locations;
  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  bool get isEnterManually;
  @override
  bool get isLocationLoaded;
  @override
  bool get hasObservationSubmitted;

  /// Create a copy of ObservationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
