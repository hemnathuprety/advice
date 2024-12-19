// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'advisory_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AdvisoryModel _$AdvisoryModelFromJson(Map<String, dynamic> json) {
  return _AdvisoryModel.fromJson(json);
}

/// @nodoc
mixin _$AdvisoryModel {
  @JsonKey(name: 'advisory_start_date')
  String? get advisoryStartDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'advisory_end_date')
  String? get advisoryEndDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'crop')
  Crop? get crop => throw _privateConstructorUsedError;
  @JsonKey(name: 'pest_alerts')
  bool? get pestAlerts => throw _privateConstructorUsedError;
  @JsonKey(name: 'color')
  String? get color => throw _privateConstructorUsedError;
  @JsonKey(name: 'pdf')
  String? get pdf => throw _privateConstructorUsedError;
  @JsonKey(name: 'observation_summary')
  String? get observationSummary => throw _privateConstructorUsedError;

  /// Serializes this AdvisoryModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AdvisoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AdvisoryModelCopyWith<AdvisoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdvisoryModelCopyWith<$Res> {
  factory $AdvisoryModelCopyWith(
          AdvisoryModel value, $Res Function(AdvisoryModel) then) =
      _$AdvisoryModelCopyWithImpl<$Res, AdvisoryModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'advisory_start_date') String? advisoryStartDate,
      @JsonKey(name: 'advisory_end_date') String? advisoryEndDate,
      @JsonKey(name: 'crop') Crop? crop,
      @JsonKey(name: 'pest_alerts') bool? pestAlerts,
      @JsonKey(name: 'color') String? color,
      @JsonKey(name: 'pdf') String? pdf,
      @JsonKey(name: 'observation_summary') String? observationSummary});

  $CropCopyWith<$Res>? get crop;
}

/// @nodoc
class _$AdvisoryModelCopyWithImpl<$Res, $Val extends AdvisoryModel>
    implements $AdvisoryModelCopyWith<$Res> {
  _$AdvisoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdvisoryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? advisoryStartDate = freezed,
    Object? advisoryEndDate = freezed,
    Object? crop = freezed,
    Object? pestAlerts = freezed,
    Object? color = freezed,
    Object? pdf = freezed,
    Object? observationSummary = freezed,
  }) {
    return _then(_value.copyWith(
      advisoryStartDate: freezed == advisoryStartDate
          ? _value.advisoryStartDate
          : advisoryStartDate // ignore: cast_nullable_to_non_nullable
              as String?,
      advisoryEndDate: freezed == advisoryEndDate
          ? _value.advisoryEndDate
          : advisoryEndDate // ignore: cast_nullable_to_non_nullable
              as String?,
      crop: freezed == crop
          ? _value.crop
          : crop // ignore: cast_nullable_to_non_nullable
              as Crop?,
      pestAlerts: freezed == pestAlerts
          ? _value.pestAlerts
          : pestAlerts // ignore: cast_nullable_to_non_nullable
              as bool?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      pdf: freezed == pdf
          ? _value.pdf
          : pdf // ignore: cast_nullable_to_non_nullable
              as String?,
      observationSummary: freezed == observationSummary
          ? _value.observationSummary
          : observationSummary // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of AdvisoryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CropCopyWith<$Res>? get crop {
    if (_value.crop == null) {
      return null;
    }

    return $CropCopyWith<$Res>(_value.crop!, (value) {
      return _then(_value.copyWith(crop: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AdvisoryModelImplCopyWith<$Res>
    implements $AdvisoryModelCopyWith<$Res> {
  factory _$$AdvisoryModelImplCopyWith(
          _$AdvisoryModelImpl value, $Res Function(_$AdvisoryModelImpl) then) =
      __$$AdvisoryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'advisory_start_date') String? advisoryStartDate,
      @JsonKey(name: 'advisory_end_date') String? advisoryEndDate,
      @JsonKey(name: 'crop') Crop? crop,
      @JsonKey(name: 'pest_alerts') bool? pestAlerts,
      @JsonKey(name: 'color') String? color,
      @JsonKey(name: 'pdf') String? pdf,
      @JsonKey(name: 'observation_summary') String? observationSummary});

  @override
  $CropCopyWith<$Res>? get crop;
}

/// @nodoc
class __$$AdvisoryModelImplCopyWithImpl<$Res>
    extends _$AdvisoryModelCopyWithImpl<$Res, _$AdvisoryModelImpl>
    implements _$$AdvisoryModelImplCopyWith<$Res> {
  __$$AdvisoryModelImplCopyWithImpl(
      _$AdvisoryModelImpl _value, $Res Function(_$AdvisoryModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdvisoryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? advisoryStartDate = freezed,
    Object? advisoryEndDate = freezed,
    Object? crop = freezed,
    Object? pestAlerts = freezed,
    Object? color = freezed,
    Object? pdf = freezed,
    Object? observationSummary = freezed,
  }) {
    return _then(_$AdvisoryModelImpl(
      advisoryStartDate: freezed == advisoryStartDate
          ? _value.advisoryStartDate
          : advisoryStartDate // ignore: cast_nullable_to_non_nullable
              as String?,
      advisoryEndDate: freezed == advisoryEndDate
          ? _value.advisoryEndDate
          : advisoryEndDate // ignore: cast_nullable_to_non_nullable
              as String?,
      crop: freezed == crop
          ? _value.crop
          : crop // ignore: cast_nullable_to_non_nullable
              as Crop?,
      pestAlerts: freezed == pestAlerts
          ? _value.pestAlerts
          : pestAlerts // ignore: cast_nullable_to_non_nullable
              as bool?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      pdf: freezed == pdf
          ? _value.pdf
          : pdf // ignore: cast_nullable_to_non_nullable
              as String?,
      observationSummary: freezed == observationSummary
          ? _value.observationSummary
          : observationSummary // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AdvisoryModelImpl implements _AdvisoryModel {
  const _$AdvisoryModelImpl(
      {@JsonKey(name: 'advisory_start_date') this.advisoryStartDate,
      @JsonKey(name: 'advisory_end_date') this.advisoryEndDate,
      @JsonKey(name: 'crop') this.crop,
      @JsonKey(name: 'pest_alerts') this.pestAlerts,
      @JsonKey(name: 'color') this.color,
      @JsonKey(name: 'pdf') this.pdf,
      @JsonKey(name: 'observation_summary') this.observationSummary});

  factory _$AdvisoryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdvisoryModelImplFromJson(json);

  @override
  @JsonKey(name: 'advisory_start_date')
  final String? advisoryStartDate;
  @override
  @JsonKey(name: 'advisory_end_date')
  final String? advisoryEndDate;
  @override
  @JsonKey(name: 'crop')
  final Crop? crop;
  @override
  @JsonKey(name: 'pest_alerts')
  final bool? pestAlerts;
  @override
  @JsonKey(name: 'color')
  final String? color;
  @override
  @JsonKey(name: 'pdf')
  final String? pdf;
  @override
  @JsonKey(name: 'observation_summary')
  final String? observationSummary;

  @override
  String toString() {
    return 'AdvisoryModel(advisoryStartDate: $advisoryStartDate, advisoryEndDate: $advisoryEndDate, crop: $crop, pestAlerts: $pestAlerts, color: $color, pdf: $pdf, observationSummary: $observationSummary)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdvisoryModelImpl &&
            (identical(other.advisoryStartDate, advisoryStartDate) ||
                other.advisoryStartDate == advisoryStartDate) &&
            (identical(other.advisoryEndDate, advisoryEndDate) ||
                other.advisoryEndDate == advisoryEndDate) &&
            (identical(other.crop, crop) || other.crop == crop) &&
            (identical(other.pestAlerts, pestAlerts) ||
                other.pestAlerts == pestAlerts) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.pdf, pdf) || other.pdf == pdf) &&
            (identical(other.observationSummary, observationSummary) ||
                other.observationSummary == observationSummary));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, advisoryStartDate,
      advisoryEndDate, crop, pestAlerts, color, pdf, observationSummary);

  /// Create a copy of AdvisoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdvisoryModelImplCopyWith<_$AdvisoryModelImpl> get copyWith =>
      __$$AdvisoryModelImplCopyWithImpl<_$AdvisoryModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdvisoryModelImplToJson(
      this,
    );
  }
}

abstract class _AdvisoryModel implements AdvisoryModel {
  const factory _AdvisoryModel(
      {@JsonKey(name: 'advisory_start_date') final String? advisoryStartDate,
      @JsonKey(name: 'advisory_end_date') final String? advisoryEndDate,
      @JsonKey(name: 'crop') final Crop? crop,
      @JsonKey(name: 'pest_alerts') final bool? pestAlerts,
      @JsonKey(name: 'color') final String? color,
      @JsonKey(name: 'pdf') final String? pdf,
      @JsonKey(name: 'observation_summary')
      final String? observationSummary}) = _$AdvisoryModelImpl;

  factory _AdvisoryModel.fromJson(Map<String, dynamic> json) =
      _$AdvisoryModelImpl.fromJson;

  @override
  @JsonKey(name: 'advisory_start_date')
  String? get advisoryStartDate;
  @override
  @JsonKey(name: 'advisory_end_date')
  String? get advisoryEndDate;
  @override
  @JsonKey(name: 'crop')
  Crop? get crop;
  @override
  @JsonKey(name: 'pest_alerts')
  bool? get pestAlerts;
  @override
  @JsonKey(name: 'color')
  String? get color;
  @override
  @JsonKey(name: 'pdf')
  String? get pdf;
  @override
  @JsonKey(name: 'observation_summary')
  String? get observationSummary;

  /// Create a copy of AdvisoryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdvisoryModelImplCopyWith<_$AdvisoryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Crop _$CropFromJson(Map<String, dynamic> json) {
  return _Crop.fromJson(json);
}

/// @nodoc
mixin _$Crop {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;

  /// Serializes this Crop to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Crop
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CropCopyWith<Crop> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CropCopyWith<$Res> {
  factory $CropCopyWith(Crop value, $Res Function(Crop) then) =
      _$CropCopyWithImpl<$Res, Crop>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id, @JsonKey(name: 'name') String? name});
}

/// @nodoc
class _$CropCopyWithImpl<$Res, $Val extends Crop>
    implements $CropCopyWith<$Res> {
  _$CropCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Crop
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
abstract class _$$CropImplCopyWith<$Res> implements $CropCopyWith<$Res> {
  factory _$$CropImplCopyWith(
          _$CropImpl value, $Res Function(_$CropImpl) then) =
      __$$CropImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id, @JsonKey(name: 'name') String? name});
}

/// @nodoc
class __$$CropImplCopyWithImpl<$Res>
    extends _$CropCopyWithImpl<$Res, _$CropImpl>
    implements _$$CropImplCopyWith<$Res> {
  __$$CropImplCopyWithImpl(_$CropImpl _value, $Res Function(_$CropImpl) _then)
      : super(_value, _then);

  /// Create a copy of Crop
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$CropImpl(
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
class _$CropImpl implements _Crop {
  const _$CropImpl(
      {@JsonKey(name: 'id') this.id, @JsonKey(name: 'name') this.name});

  factory _$CropImpl.fromJson(Map<String, dynamic> json) =>
      _$$CropImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'name')
  final String? name;

  @override
  String toString() {
    return 'Crop(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CropImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of Crop
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CropImplCopyWith<_$CropImpl> get copyWith =>
      __$$CropImplCopyWithImpl<_$CropImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CropImplToJson(
      this,
    );
  }
}

abstract class _Crop implements Crop {
  const factory _Crop(
      {@JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'name') final String? name}) = _$CropImpl;

  factory _Crop.fromJson(Map<String, dynamic> json) = _$CropImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'name')
  String? get name;

  /// Create a copy of Crop
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CropImplCopyWith<_$CropImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
