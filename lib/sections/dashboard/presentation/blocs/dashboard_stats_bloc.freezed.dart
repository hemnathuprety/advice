// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_stats_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DashboardStatsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LocationsModel location) loadForecast,
    required TResult Function(String lat, String long) locationDetailLoad,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LocationsModel location)? loadForecast,
    TResult? Function(String lat, String long)? locationDetailLoad,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LocationsModel location)? loadForecast,
    TResult Function(String lat, String long)? locationDetailLoad,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadForecast value) loadForecast,
    required TResult Function(_LocationDetailLoad value) locationDetailLoad,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadForecast value)? loadForecast,
    TResult? Function(_LocationDetailLoad value)? locationDetailLoad,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadForecast value)? loadForecast,
    TResult Function(_LocationDetailLoad value)? locationDetailLoad,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardStatsEventCopyWith<$Res> {
  factory $DashboardStatsEventCopyWith(
          DashboardStatsEvent value, $Res Function(DashboardStatsEvent) then) =
      _$DashboardStatsEventCopyWithImpl<$Res, DashboardStatsEvent>;
}

/// @nodoc
class _$DashboardStatsEventCopyWithImpl<$Res, $Val extends DashboardStatsEvent>
    implements $DashboardStatsEventCopyWith<$Res> {
  _$DashboardStatsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DashboardStatsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadForecastImplCopyWith<$Res> {
  factory _$$LoadForecastImplCopyWith(
          _$LoadForecastImpl value, $Res Function(_$LoadForecastImpl) then) =
      __$$LoadForecastImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LocationsModel location});

  $LocationsModelCopyWith<$Res> get location;
}

/// @nodoc
class __$$LoadForecastImplCopyWithImpl<$Res>
    extends _$DashboardStatsEventCopyWithImpl<$Res, _$LoadForecastImpl>
    implements _$$LoadForecastImplCopyWith<$Res> {
  __$$LoadForecastImplCopyWithImpl(
      _$LoadForecastImpl _value, $Res Function(_$LoadForecastImpl) _then)
      : super(_value, _then);

  /// Create a copy of DashboardStatsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = null,
  }) {
    return _then(_$LoadForecastImpl(
      null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationsModel,
    ));
  }

  /// Create a copy of DashboardStatsEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationsModelCopyWith<$Res> get location {
    return $LocationsModelCopyWith<$Res>(_value.location, (value) {
      return _then(_value.copyWith(location: value));
    });
  }
}

/// @nodoc

class _$LoadForecastImpl implements _LoadForecast {
  const _$LoadForecastImpl(this.location);

  @override
  final LocationsModel location;

  @override
  String toString() {
    return 'DashboardStatsEvent.loadForecast(location: $location)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadForecastImpl &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @override
  int get hashCode => Object.hash(runtimeType, location);

  /// Create a copy of DashboardStatsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadForecastImplCopyWith<_$LoadForecastImpl> get copyWith =>
      __$$LoadForecastImplCopyWithImpl<_$LoadForecastImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LocationsModel location) loadForecast,
    required TResult Function(String lat, String long) locationDetailLoad,
  }) {
    return loadForecast(location);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LocationsModel location)? loadForecast,
    TResult? Function(String lat, String long)? locationDetailLoad,
  }) {
    return loadForecast?.call(location);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LocationsModel location)? loadForecast,
    TResult Function(String lat, String long)? locationDetailLoad,
    required TResult orElse(),
  }) {
    if (loadForecast != null) {
      return loadForecast(location);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadForecast value) loadForecast,
    required TResult Function(_LocationDetailLoad value) locationDetailLoad,
  }) {
    return loadForecast(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadForecast value)? loadForecast,
    TResult? Function(_LocationDetailLoad value)? locationDetailLoad,
  }) {
    return loadForecast?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadForecast value)? loadForecast,
    TResult Function(_LocationDetailLoad value)? locationDetailLoad,
    required TResult orElse(),
  }) {
    if (loadForecast != null) {
      return loadForecast(this);
    }
    return orElse();
  }
}

abstract class _LoadForecast implements DashboardStatsEvent {
  const factory _LoadForecast(final LocationsModel location) =
      _$LoadForecastImpl;

  LocationsModel get location;

  /// Create a copy of DashboardStatsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadForecastImplCopyWith<_$LoadForecastImpl> get copyWith =>
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
    extends _$DashboardStatsEventCopyWithImpl<$Res, _$LocationDetailLoadImpl>
    implements _$$LocationDetailLoadImplCopyWith<$Res> {
  __$$LocationDetailLoadImplCopyWithImpl(_$LocationDetailLoadImpl _value,
      $Res Function(_$LocationDetailLoadImpl) _then)
      : super(_value, _then);

  /// Create a copy of DashboardStatsEvent
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
    return 'DashboardStatsEvent.locationDetailLoad(lat: $lat, long: $long)';
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

  /// Create a copy of DashboardStatsEvent
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
    required TResult Function(LocationsModel location) loadForecast,
    required TResult Function(String lat, String long) locationDetailLoad,
  }) {
    return locationDetailLoad(lat, long);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LocationsModel location)? loadForecast,
    TResult? Function(String lat, String long)? locationDetailLoad,
  }) {
    return locationDetailLoad?.call(lat, long);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LocationsModel location)? loadForecast,
    TResult Function(String lat, String long)? locationDetailLoad,
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
    required TResult Function(_LoadForecast value) loadForecast,
    required TResult Function(_LocationDetailLoad value) locationDetailLoad,
  }) {
    return locationDetailLoad(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadForecast value)? loadForecast,
    TResult? Function(_LocationDetailLoad value)? locationDetailLoad,
  }) {
    return locationDetailLoad?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadForecast value)? loadForecast,
    TResult Function(_LocationDetailLoad value)? locationDetailLoad,
    required TResult orElse(),
  }) {
    if (locationDetailLoad != null) {
      return locationDetailLoad(this);
    }
    return orElse();
  }
}

abstract class _LocationDetailLoad implements DashboardStatsEvent {
  const factory _LocationDetailLoad(final String lat, final String long) =
      _$LocationDetailLoadImpl;

  String get lat;
  String get long;

  /// Create a copy of DashboardStatsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocationDetailLoadImplCopyWith<_$LocationDetailLoadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DashboardStatsState {
  ForecastsModel? get forecastModel => throw _privateConstructorUsedError;
  LocationsModel? get locations => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  bool get isLocationLoaded => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            ForecastsModel? forecastModel,
            LocationsModel? locations,
            bool isLoading,
            bool hasError,
            bool isLocationLoaded)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ForecastsModel? forecastModel, LocationsModel? locations,
            bool isLoading, bool hasError, bool isLocationLoaded)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ForecastsModel? forecastModel, LocationsModel? locations,
            bool isLoading, bool hasError, bool isLocationLoaded)?
        initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of DashboardStatsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DashboardStatsStateCopyWith<DashboardStatsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardStatsStateCopyWith<$Res> {
  factory $DashboardStatsStateCopyWith(
          DashboardStatsState value, $Res Function(DashboardStatsState) then) =
      _$DashboardStatsStateCopyWithImpl<$Res, DashboardStatsState>;
  @useResult
  $Res call(
      {ForecastsModel? forecastModel,
      LocationsModel? locations,
      bool isLoading,
      bool hasError,
      bool isLocationLoaded});

  $ForecastsModelCopyWith<$Res>? get forecastModel;
  $LocationsModelCopyWith<$Res>? get locations;
}

/// @nodoc
class _$DashboardStatsStateCopyWithImpl<$Res, $Val extends DashboardStatsState>
    implements $DashboardStatsStateCopyWith<$Res> {
  _$DashboardStatsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DashboardStatsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? forecastModel = freezed,
    Object? locations = freezed,
    Object? isLoading = null,
    Object? hasError = null,
    Object? isLocationLoaded = null,
  }) {
    return _then(_value.copyWith(
      forecastModel: freezed == forecastModel
          ? _value.forecastModel
          : forecastModel // ignore: cast_nullable_to_non_nullable
              as ForecastsModel?,
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
      isLocationLoaded: null == isLocationLoaded
          ? _value.isLocationLoaded
          : isLocationLoaded // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of DashboardStatsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ForecastsModelCopyWith<$Res>? get forecastModel {
    if (_value.forecastModel == null) {
      return null;
    }

    return $ForecastsModelCopyWith<$Res>(_value.forecastModel!, (value) {
      return _then(_value.copyWith(forecastModel: value) as $Val);
    });
  }

  /// Create a copy of DashboardStatsState
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
abstract class _$$InitialImplCopyWith<$Res>
    implements $DashboardStatsStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ForecastsModel? forecastModel,
      LocationsModel? locations,
      bool isLoading,
      bool hasError,
      bool isLocationLoaded});

  @override
  $ForecastsModelCopyWith<$Res>? get forecastModel;
  @override
  $LocationsModelCopyWith<$Res>? get locations;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$DashboardStatsStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of DashboardStatsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? forecastModel = freezed,
    Object? locations = freezed,
    Object? isLoading = null,
    Object? hasError = null,
    Object? isLocationLoaded = null,
  }) {
    return _then(_$InitialImpl(
      forecastModel: freezed == forecastModel
          ? _value.forecastModel
          : forecastModel // ignore: cast_nullable_to_non_nullable
              as ForecastsModel?,
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
      isLocationLoaded: null == isLocationLoaded
          ? _value.isLocationLoaded
          : isLocationLoaded // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.forecastModel,
      this.locations,
      this.isLoading = false,
      this.hasError = false,
      this.isLocationLoaded = false});

  @override
  final ForecastsModel? forecastModel;
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
  final bool isLocationLoaded;

  @override
  String toString() {
    return 'DashboardStatsState.initial(forecastModel: $forecastModel, locations: $locations, isLoading: $isLoading, hasError: $hasError, isLocationLoaded: $isLocationLoaded)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.forecastModel, forecastModel) ||
                other.forecastModel == forecastModel) &&
            (identical(other.locations, locations) ||
                other.locations == locations) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError) &&
            (identical(other.isLocationLoaded, isLocationLoaded) ||
                other.isLocationLoaded == isLocationLoaded));
  }

  @override
  int get hashCode => Object.hash(runtimeType, forecastModel, locations,
      isLoading, hasError, isLocationLoaded);

  /// Create a copy of DashboardStatsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            ForecastsModel? forecastModel,
            LocationsModel? locations,
            bool isLoading,
            bool hasError,
            bool isLocationLoaded)
        initial,
  }) {
    return initial(
        forecastModel, locations, isLoading, hasError, isLocationLoaded);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ForecastsModel? forecastModel, LocationsModel? locations,
            bool isLoading, bool hasError, bool isLocationLoaded)?
        initial,
  }) {
    return initial?.call(
        forecastModel, locations, isLoading, hasError, isLocationLoaded);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ForecastsModel? forecastModel, LocationsModel? locations,
            bool isLoading, bool hasError, bool isLocationLoaded)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(
          forecastModel, locations, isLoading, hasError, isLocationLoaded);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements DashboardStatsState {
  const factory _Initial(
      {final ForecastsModel? forecastModel,
      final LocationsModel? locations,
      final bool isLoading,
      final bool hasError,
      final bool isLocationLoaded}) = _$InitialImpl;

  @override
  ForecastsModel? get forecastModel;
  @override
  LocationsModel? get locations;
  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  bool get isLocationLoaded;

  /// Create a copy of DashboardStatsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
