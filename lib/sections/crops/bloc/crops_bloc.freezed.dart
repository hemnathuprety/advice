// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'crops_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CropsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(String cropId) detail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(String cropId)? detail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(String cropId)? detail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_Detail value) detail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Load value)? load,
    TResult? Function(_Detail value)? detail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_Detail value)? detail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CropsEventCopyWith<$Res> {
  factory $CropsEventCopyWith(
          CropsEvent value, $Res Function(CropsEvent) then) =
      _$CropsEventCopyWithImpl<$Res, CropsEvent>;
}

/// @nodoc
class _$CropsEventCopyWithImpl<$Res, $Val extends CropsEvent>
    implements $CropsEventCopyWith<$Res> {
  _$CropsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CropsEvent
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
    extends _$CropsEventCopyWithImpl<$Res, _$LoadImpl>
    implements _$$LoadImplCopyWith<$Res> {
  __$$LoadImplCopyWithImpl(_$LoadImpl _value, $Res Function(_$LoadImpl) _then)
      : super(_value, _then);

  /// Create a copy of CropsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadImpl implements _Load {
  const _$LoadImpl();

  @override
  String toString() {
    return 'CropsEvent.load()';
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
    required TResult Function(String cropId) detail,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(String cropId)? detail,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(String cropId)? detail,
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
    required TResult Function(_Detail value) detail,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Load value)? load,
    TResult? Function(_Detail value)? detail,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_Detail value)? detail,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _Load implements CropsEvent {
  const factory _Load() = _$LoadImpl;
}

/// @nodoc
abstract class _$$DetailImplCopyWith<$Res> {
  factory _$$DetailImplCopyWith(
          _$DetailImpl value, $Res Function(_$DetailImpl) then) =
      __$$DetailImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String cropId});
}

/// @nodoc
class __$$DetailImplCopyWithImpl<$Res>
    extends _$CropsEventCopyWithImpl<$Res, _$DetailImpl>
    implements _$$DetailImplCopyWith<$Res> {
  __$$DetailImplCopyWithImpl(
      _$DetailImpl _value, $Res Function(_$DetailImpl) _then)
      : super(_value, _then);

  /// Create a copy of CropsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cropId = null,
  }) {
    return _then(_$DetailImpl(
      null == cropId
          ? _value.cropId
          : cropId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DetailImpl implements _Detail {
  const _$DetailImpl(this.cropId);

  @override
  final String cropId;

  @override
  String toString() {
    return 'CropsEvent.detail(cropId: $cropId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailImpl &&
            (identical(other.cropId, cropId) || other.cropId == cropId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cropId);

  /// Create a copy of CropsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailImplCopyWith<_$DetailImpl> get copyWith =>
      __$$DetailImplCopyWithImpl<_$DetailImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(String cropId) detail,
  }) {
    return detail(cropId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(String cropId)? detail,
  }) {
    return detail?.call(cropId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(String cropId)? detail,
    required TResult orElse(),
  }) {
    if (detail != null) {
      return detail(cropId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_Detail value) detail,
  }) {
    return detail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Load value)? load,
    TResult? Function(_Detail value)? detail,
  }) {
    return detail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_Detail value)? detail,
    required TResult orElse(),
  }) {
    if (detail != null) {
      return detail(this);
    }
    return orElse();
  }
}

abstract class _Detail implements CropsEvent {
  const factory _Detail(final String cropId) = _$DetailImpl;

  String get cropId;

  /// Create a copy of CropsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DetailImplCopyWith<_$DetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CropsState {
  List<CropsModel> get crops => throw _privateConstructorUsedError;
  CropDetail? get cropsDetail => throw _privateConstructorUsedError;
  List<MajorStage> get majorStages => throw _privateConstructorUsedError;
  List<CropThreat> get cropsThreats => throw _privateConstructorUsedError;
  Map<CropThreat, List<PotentialPest>> get cropPestMap =>
      throw _privateConstructorUsedError;
  Map<MajorStage, List<Stage>>? get majorSubStage =>
      throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<CropsModel> crops,
            CropDetail? cropsDetail,
            List<MajorStage> majorStages,
            List<CropThreat> cropsThreats,
            Map<CropThreat, List<PotentialPest>> cropPestMap,
            Map<MajorStage, List<Stage>>? majorSubStage,
            bool isLoading,
            bool hasError)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<CropsModel> crops,
            CropDetail? cropsDetail,
            List<MajorStage> majorStages,
            List<CropThreat> cropsThreats,
            Map<CropThreat, List<PotentialPest>> cropPestMap,
            Map<MajorStage, List<Stage>>? majorSubStage,
            bool isLoading,
            bool hasError)?
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<CropsModel> crops,
            CropDetail? cropsDetail,
            List<MajorStage> majorStages,
            List<CropThreat> cropsThreats,
            Map<CropThreat, List<PotentialPest>> cropPestMap,
            Map<MajorStage, List<Stage>>? majorSubStage,
            bool isLoading,
            bool hasError)?
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

  /// Create a copy of CropsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CropsStateCopyWith<CropsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CropsStateCopyWith<$Res> {
  factory $CropsStateCopyWith(
          CropsState value, $Res Function(CropsState) then) =
      _$CropsStateCopyWithImpl<$Res, CropsState>;
  @useResult
  $Res call(
      {List<CropsModel> crops,
      CropDetail? cropsDetail,
      List<MajorStage> majorStages,
      List<CropThreat> cropsThreats,
      Map<CropThreat, List<PotentialPest>> cropPestMap,
      Map<MajorStage, List<Stage>>? majorSubStage,
      bool isLoading,
      bool hasError});

  $CropDetailCopyWith<$Res>? get cropsDetail;
}

/// @nodoc
class _$CropsStateCopyWithImpl<$Res, $Val extends CropsState>
    implements $CropsStateCopyWith<$Res> {
  _$CropsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CropsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? crops = null,
    Object? cropsDetail = freezed,
    Object? majorStages = null,
    Object? cropsThreats = null,
    Object? cropPestMap = null,
    Object? majorSubStage = freezed,
    Object? isLoading = null,
    Object? hasError = null,
  }) {
    return _then(_value.copyWith(
      crops: null == crops
          ? _value.crops
          : crops // ignore: cast_nullable_to_non_nullable
              as List<CropsModel>,
      cropsDetail: freezed == cropsDetail
          ? _value.cropsDetail
          : cropsDetail // ignore: cast_nullable_to_non_nullable
              as CropDetail?,
      majorStages: null == majorStages
          ? _value.majorStages
          : majorStages // ignore: cast_nullable_to_non_nullable
              as List<MajorStage>,
      cropsThreats: null == cropsThreats
          ? _value.cropsThreats
          : cropsThreats // ignore: cast_nullable_to_non_nullable
              as List<CropThreat>,
      cropPestMap: null == cropPestMap
          ? _value.cropPestMap
          : cropPestMap // ignore: cast_nullable_to_non_nullable
              as Map<CropThreat, List<PotentialPest>>,
      majorSubStage: freezed == majorSubStage
          ? _value.majorSubStage
          : majorSubStage // ignore: cast_nullable_to_non_nullable
              as Map<MajorStage, List<Stage>>?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of CropsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CropDetailCopyWith<$Res>? get cropsDetail {
    if (_value.cropsDetail == null) {
      return null;
    }

    return $CropDetailCopyWith<$Res>(_value.cropsDetail!, (value) {
      return _then(_value.copyWith(cropsDetail: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res>
    implements $CropsStateCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<CropsModel> crops,
      CropDetail? cropsDetail,
      List<MajorStage> majorStages,
      List<CropThreat> cropsThreats,
      Map<CropThreat, List<PotentialPest>> cropPestMap,
      Map<MajorStage, List<Stage>>? majorSubStage,
      bool isLoading,
      bool hasError});

  @override
  $CropDetailCopyWith<$Res>? get cropsDetail;
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$CropsStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CropsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? crops = null,
    Object? cropsDetail = freezed,
    Object? majorStages = null,
    Object? cropsThreats = null,
    Object? cropPestMap = null,
    Object? majorSubStage = freezed,
    Object? isLoading = null,
    Object? hasError = null,
  }) {
    return _then(_$LoadedImpl(
      crops: null == crops
          ? _value._crops
          : crops // ignore: cast_nullable_to_non_nullable
              as List<CropsModel>,
      cropsDetail: freezed == cropsDetail
          ? _value.cropsDetail
          : cropsDetail // ignore: cast_nullable_to_non_nullable
              as CropDetail?,
      majorStages: null == majorStages
          ? _value._majorStages
          : majorStages // ignore: cast_nullable_to_non_nullable
              as List<MajorStage>,
      cropsThreats: null == cropsThreats
          ? _value._cropsThreats
          : cropsThreats // ignore: cast_nullable_to_non_nullable
              as List<CropThreat>,
      cropPestMap: null == cropPestMap
          ? _value._cropPestMap
          : cropPestMap // ignore: cast_nullable_to_non_nullable
              as Map<CropThreat, List<PotentialPest>>,
      majorSubStage: freezed == majorSubStage
          ? _value._majorSubStage
          : majorSubStage // ignore: cast_nullable_to_non_nullable
              as Map<MajorStage, List<Stage>>?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(
      {final List<CropsModel> crops = const [],
      this.cropsDetail,
      final List<MajorStage> majorStages = const [],
      final List<CropThreat> cropsThreats = const [],
      final Map<CropThreat, List<PotentialPest>> cropPestMap = const {},
      final Map<MajorStage, List<Stage>>? majorSubStage = const {},
      this.isLoading = false,
      this.hasError = false})
      : _crops = crops,
        _majorStages = majorStages,
        _cropsThreats = cropsThreats,
        _cropPestMap = cropPestMap,
        _majorSubStage = majorSubStage;

  final List<CropsModel> _crops;
  @override
  @JsonKey()
  List<CropsModel> get crops {
    if (_crops is EqualUnmodifiableListView) return _crops;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_crops);
  }

  @override
  final CropDetail? cropsDetail;
  final List<MajorStage> _majorStages;
  @override
  @JsonKey()
  List<MajorStage> get majorStages {
    if (_majorStages is EqualUnmodifiableListView) return _majorStages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_majorStages);
  }

  final List<CropThreat> _cropsThreats;
  @override
  @JsonKey()
  List<CropThreat> get cropsThreats {
    if (_cropsThreats is EqualUnmodifiableListView) return _cropsThreats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cropsThreats);
  }

  final Map<CropThreat, List<PotentialPest>> _cropPestMap;
  @override
  @JsonKey()
  Map<CropThreat, List<PotentialPest>> get cropPestMap {
    if (_cropPestMap is EqualUnmodifiableMapView) return _cropPestMap;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_cropPestMap);
  }

  final Map<MajorStage, List<Stage>>? _majorSubStage;
  @override
  @JsonKey()
  Map<MajorStage, List<Stage>>? get majorSubStage {
    final value = _majorSubStage;
    if (value == null) return null;
    if (_majorSubStage is EqualUnmodifiableMapView) return _majorSubStage;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool hasError;

  @override
  String toString() {
    return 'CropsState.loaded(crops: $crops, cropsDetail: $cropsDetail, majorStages: $majorStages, cropsThreats: $cropsThreats, cropPestMap: $cropPestMap, majorSubStage: $majorSubStage, isLoading: $isLoading, hasError: $hasError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality().equals(other._crops, _crops) &&
            (identical(other.cropsDetail, cropsDetail) ||
                other.cropsDetail == cropsDetail) &&
            const DeepCollectionEquality()
                .equals(other._majorStages, _majorStages) &&
            const DeepCollectionEquality()
                .equals(other._cropsThreats, _cropsThreats) &&
            const DeepCollectionEquality()
                .equals(other._cropPestMap, _cropPestMap) &&
            const DeepCollectionEquality()
                .equals(other._majorSubStage, _majorSubStage) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_crops),
      cropsDetail,
      const DeepCollectionEquality().hash(_majorStages),
      const DeepCollectionEquality().hash(_cropsThreats),
      const DeepCollectionEquality().hash(_cropPestMap),
      const DeepCollectionEquality().hash(_majorSubStage),
      isLoading,
      hasError);

  /// Create a copy of CropsState
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
            List<CropsModel> crops,
            CropDetail? cropsDetail,
            List<MajorStage> majorStages,
            List<CropThreat> cropsThreats,
            Map<CropThreat, List<PotentialPest>> cropPestMap,
            Map<MajorStage, List<Stage>>? majorSubStage,
            bool isLoading,
            bool hasError)
        loaded,
  }) {
    return loaded(crops, cropsDetail, majorStages, cropsThreats, cropPestMap,
        majorSubStage, isLoading, hasError);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<CropsModel> crops,
            CropDetail? cropsDetail,
            List<MajorStage> majorStages,
            List<CropThreat> cropsThreats,
            Map<CropThreat, List<PotentialPest>> cropPestMap,
            Map<MajorStage, List<Stage>>? majorSubStage,
            bool isLoading,
            bool hasError)?
        loaded,
  }) {
    return loaded?.call(crops, cropsDetail, majorStages, cropsThreats,
        cropPestMap, majorSubStage, isLoading, hasError);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<CropsModel> crops,
            CropDetail? cropsDetail,
            List<MajorStage> majorStages,
            List<CropThreat> cropsThreats,
            Map<CropThreat, List<PotentialPest>> cropPestMap,
            Map<MajorStage, List<Stage>>? majorSubStage,
            bool isLoading,
            bool hasError)?
        loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(crops, cropsDetail, majorStages, cropsThreats, cropPestMap,
          majorSubStage, isLoading, hasError);
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

abstract class _Loaded implements CropsState {
  const factory _Loaded(
      {final List<CropsModel> crops,
      final CropDetail? cropsDetail,
      final List<MajorStage> majorStages,
      final List<CropThreat> cropsThreats,
      final Map<CropThreat, List<PotentialPest>> cropPestMap,
      final Map<MajorStage, List<Stage>>? majorSubStage,
      final bool isLoading,
      final bool hasError}) = _$LoadedImpl;

  @override
  List<CropsModel> get crops;
  @override
  CropDetail? get cropsDetail;
  @override
  List<MajorStage> get majorStages;
  @override
  List<CropThreat> get cropsThreats;
  @override
  Map<CropThreat, List<PotentialPest>> get cropPestMap;
  @override
  Map<MajorStage, List<Stage>>? get majorSubStage;
  @override
  bool get isLoading;
  @override
  bool get hasError;

  /// Create a copy of CropsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
