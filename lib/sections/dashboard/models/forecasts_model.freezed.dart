// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forecasts_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ForecastsModel _$ForecastsModelFromJson(Map<String, dynamic> json) {
  return _ForecastsModel.fromJson(json);
}

/// @nodoc
mixin _$ForecastsModel {
  @JsonKey(name: 'summaryPreviousWeek')
  String? get summaryPreviousWeek => throw _privateConstructorUsedError;
  @JsonKey(name: 'summaryNextWeek')
  String? get summaryNextWeek => throw _privateConstructorUsedError;
  @JsonKey(name: 'dataNextWeek')
  List<List<int?>>? get dataNextWeek => throw _privateConstructorUsedError;
  @JsonKey(name: 'geom')
  String? get geom => throw _privateConstructorUsedError;

  /// Serializes this ForecastsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ForecastsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ForecastsModelCopyWith<ForecastsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForecastsModelCopyWith<$Res> {
  factory $ForecastsModelCopyWith(
          ForecastsModel value, $Res Function(ForecastsModel) then) =
      _$ForecastsModelCopyWithImpl<$Res, ForecastsModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'summaryPreviousWeek') String? summaryPreviousWeek,
      @JsonKey(name: 'summaryNextWeek') String? summaryNextWeek,
      @JsonKey(name: 'dataNextWeek') List<List<int?>>? dataNextWeek,
      @JsonKey(name: 'geom') String? geom});
}

/// @nodoc
class _$ForecastsModelCopyWithImpl<$Res, $Val extends ForecastsModel>
    implements $ForecastsModelCopyWith<$Res> {
  _$ForecastsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ForecastsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? summaryPreviousWeek = freezed,
    Object? summaryNextWeek = freezed,
    Object? dataNextWeek = freezed,
    Object? geom = freezed,
  }) {
    return _then(_value.copyWith(
      summaryPreviousWeek: freezed == summaryPreviousWeek
          ? _value.summaryPreviousWeek
          : summaryPreviousWeek // ignore: cast_nullable_to_non_nullable
              as String?,
      summaryNextWeek: freezed == summaryNextWeek
          ? _value.summaryNextWeek
          : summaryNextWeek // ignore: cast_nullable_to_non_nullable
              as String?,
      dataNextWeek: freezed == dataNextWeek
          ? _value.dataNextWeek
          : dataNextWeek // ignore: cast_nullable_to_non_nullable
              as List<List<int?>>?,
      geom: freezed == geom
          ? _value.geom
          : geom // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ForecastsModelImplCopyWith<$Res>
    implements $ForecastsModelCopyWith<$Res> {
  factory _$$ForecastsModelImplCopyWith(_$ForecastsModelImpl value,
          $Res Function(_$ForecastsModelImpl) then) =
      __$$ForecastsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'summaryPreviousWeek') String? summaryPreviousWeek,
      @JsonKey(name: 'summaryNextWeek') String? summaryNextWeek,
      @JsonKey(name: 'dataNextWeek') List<List<int?>>? dataNextWeek,
      @JsonKey(name: 'geom') String? geom});
}

/// @nodoc
class __$$ForecastsModelImplCopyWithImpl<$Res>
    extends _$ForecastsModelCopyWithImpl<$Res, _$ForecastsModelImpl>
    implements _$$ForecastsModelImplCopyWith<$Res> {
  __$$ForecastsModelImplCopyWithImpl(
      _$ForecastsModelImpl _value, $Res Function(_$ForecastsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ForecastsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? summaryPreviousWeek = freezed,
    Object? summaryNextWeek = freezed,
    Object? dataNextWeek = freezed,
    Object? geom = freezed,
  }) {
    return _then(_$ForecastsModelImpl(
      summaryPreviousWeek: freezed == summaryPreviousWeek
          ? _value.summaryPreviousWeek
          : summaryPreviousWeek // ignore: cast_nullable_to_non_nullable
              as String?,
      summaryNextWeek: freezed == summaryNextWeek
          ? _value.summaryNextWeek
          : summaryNextWeek // ignore: cast_nullable_to_non_nullable
              as String?,
      dataNextWeek: freezed == dataNextWeek
          ? _value._dataNextWeek
          : dataNextWeek // ignore: cast_nullable_to_non_nullable
              as List<List<int?>>?,
      geom: freezed == geom
          ? _value.geom
          : geom // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ForecastsModelImpl implements _ForecastsModel {
  const _$ForecastsModelImpl(
      {@JsonKey(name: 'summaryPreviousWeek') this.summaryPreviousWeek,
      @JsonKey(name: 'summaryNextWeek') this.summaryNextWeek,
      @JsonKey(name: 'dataNextWeek') final List<List<int?>>? dataNextWeek,
      @JsonKey(name: 'geom') this.geom})
      : _dataNextWeek = dataNextWeek;

  factory _$ForecastsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ForecastsModelImplFromJson(json);

  @override
  @JsonKey(name: 'summaryPreviousWeek')
  final String? summaryPreviousWeek;
  @override
  @JsonKey(name: 'summaryNextWeek')
  final String? summaryNextWeek;
  final List<List<int?>>? _dataNextWeek;
  @override
  @JsonKey(name: 'dataNextWeek')
  List<List<int?>>? get dataNextWeek {
    final value = _dataNextWeek;
    if (value == null) return null;
    if (_dataNextWeek is EqualUnmodifiableListView) return _dataNextWeek;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'geom')
  final String? geom;

  @override
  String toString() {
    return 'ForecastsModel(summaryPreviousWeek: $summaryPreviousWeek, summaryNextWeek: $summaryNextWeek, dataNextWeek: $dataNextWeek, geom: $geom)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForecastsModelImpl &&
            (identical(other.summaryPreviousWeek, summaryPreviousWeek) ||
                other.summaryPreviousWeek == summaryPreviousWeek) &&
            (identical(other.summaryNextWeek, summaryNextWeek) ||
                other.summaryNextWeek == summaryNextWeek) &&
            const DeepCollectionEquality()
                .equals(other._dataNextWeek, _dataNextWeek) &&
            (identical(other.geom, geom) || other.geom == geom));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      summaryPreviousWeek,
      summaryNextWeek,
      const DeepCollectionEquality().hash(_dataNextWeek),
      geom);

  /// Create a copy of ForecastsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ForecastsModelImplCopyWith<_$ForecastsModelImpl> get copyWith =>
      __$$ForecastsModelImplCopyWithImpl<_$ForecastsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ForecastsModelImplToJson(
      this,
    );
  }
}

abstract class _ForecastsModel implements ForecastsModel {
  const factory _ForecastsModel(
      {@JsonKey(name: 'summaryPreviousWeek') final String? summaryPreviousWeek,
      @JsonKey(name: 'summaryNextWeek') final String? summaryNextWeek,
      @JsonKey(name: 'dataNextWeek') final List<List<int?>>? dataNextWeek,
      @JsonKey(name: 'geom') final String? geom}) = _$ForecastsModelImpl;

  factory _ForecastsModel.fromJson(Map<String, dynamic> json) =
      _$ForecastsModelImpl.fromJson;

  @override
  @JsonKey(name: 'summaryPreviousWeek')
  String? get summaryPreviousWeek;
  @override
  @JsonKey(name: 'summaryNextWeek')
  String? get summaryNextWeek;
  @override
  @JsonKey(name: 'dataNextWeek')
  List<List<int?>>? get dataNextWeek;
  @override
  @JsonKey(name: 'geom')
  String? get geom;

  /// Create a copy of ForecastsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ForecastsModelImplCopyWith<_$ForecastsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
