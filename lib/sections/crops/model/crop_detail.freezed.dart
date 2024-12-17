// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'crop_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CropDetail _$CropDetailFromJson(Map<String, dynamic> json) {
  return _CropDetail.fromJson(json);
}

/// @nodoc
mixin _$CropDetail {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "image")
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: "remarks")
  dynamic get remarks => throw _privateConstructorUsedError;
  @JsonKey(name: "stages")
  List<Stage>? get stages => throw _privateConstructorUsedError;
  @JsonKey(name: "management_practices")
  List<ManagementPractice>? get managementPractices =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "varieties")
  List<Variety>? get varieties => throw _privateConstructorUsedError;
  @JsonKey(name: "potential_pests")
  List<PotentialPest>? get potentialPests => throw _privateConstructorUsedError;

  /// Serializes this CropDetail to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CropDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CropDetailCopyWith<CropDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CropDetailCopyWith<$Res> {
  factory $CropDetailCopyWith(
          CropDetail value, $Res Function(CropDetail) then) =
      _$CropDetailCopyWithImpl<$Res, CropDetail>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "image") String? image,
      @JsonKey(name: "remarks") dynamic remarks,
      @JsonKey(name: "stages") List<Stage>? stages,
      @JsonKey(name: "management_practices")
      List<ManagementPractice>? managementPractices,
      @JsonKey(name: "varieties") List<Variety>? varieties,
      @JsonKey(name: "potential_pests") List<PotentialPest>? potentialPests});
}

/// @nodoc
class _$CropDetailCopyWithImpl<$Res, $Val extends CropDetail>
    implements $CropDetailCopyWith<$Res> {
  _$CropDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CropDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? remarks = freezed,
    Object? stages = freezed,
    Object? managementPractices = freezed,
    Object? varieties = freezed,
    Object? potentialPests = freezed,
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
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      remarks: freezed == remarks
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as dynamic,
      stages: freezed == stages
          ? _value.stages
          : stages // ignore: cast_nullable_to_non_nullable
              as List<Stage>?,
      managementPractices: freezed == managementPractices
          ? _value.managementPractices
          : managementPractices // ignore: cast_nullable_to_non_nullable
              as List<ManagementPractice>?,
      varieties: freezed == varieties
          ? _value.varieties
          : varieties // ignore: cast_nullable_to_non_nullable
              as List<Variety>?,
      potentialPests: freezed == potentialPests
          ? _value.potentialPests
          : potentialPests // ignore: cast_nullable_to_non_nullable
              as List<PotentialPest>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CropDetailImplCopyWith<$Res>
    implements $CropDetailCopyWith<$Res> {
  factory _$$CropDetailImplCopyWith(
          _$CropDetailImpl value, $Res Function(_$CropDetailImpl) then) =
      __$$CropDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "image") String? image,
      @JsonKey(name: "remarks") dynamic remarks,
      @JsonKey(name: "stages") List<Stage>? stages,
      @JsonKey(name: "management_practices")
      List<ManagementPractice>? managementPractices,
      @JsonKey(name: "varieties") List<Variety>? varieties,
      @JsonKey(name: "potential_pests") List<PotentialPest>? potentialPests});
}

/// @nodoc
class __$$CropDetailImplCopyWithImpl<$Res>
    extends _$CropDetailCopyWithImpl<$Res, _$CropDetailImpl>
    implements _$$CropDetailImplCopyWith<$Res> {
  __$$CropDetailImplCopyWithImpl(
      _$CropDetailImpl _value, $Res Function(_$CropDetailImpl) _then)
      : super(_value, _then);

  /// Create a copy of CropDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? remarks = freezed,
    Object? stages = freezed,
    Object? managementPractices = freezed,
    Object? varieties = freezed,
    Object? potentialPests = freezed,
  }) {
    return _then(_$CropDetailImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      remarks: freezed == remarks
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as dynamic,
      stages: freezed == stages
          ? _value._stages
          : stages // ignore: cast_nullable_to_non_nullable
              as List<Stage>?,
      managementPractices: freezed == managementPractices
          ? _value._managementPractices
          : managementPractices // ignore: cast_nullable_to_non_nullable
              as List<ManagementPractice>?,
      varieties: freezed == varieties
          ? _value._varieties
          : varieties // ignore: cast_nullable_to_non_nullable
              as List<Variety>?,
      potentialPests: freezed == potentialPests
          ? _value._potentialPests
          : potentialPests // ignore: cast_nullable_to_non_nullable
              as List<PotentialPest>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CropDetailImpl implements _CropDetail {
  const _$CropDetailImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "image") this.image,
      @JsonKey(name: "remarks") this.remarks,
      @JsonKey(name: "stages") final List<Stage>? stages,
      @JsonKey(name: "management_practices")
      final List<ManagementPractice>? managementPractices,
      @JsonKey(name: "varieties") final List<Variety>? varieties,
      @JsonKey(name: "potential_pests")
      final List<PotentialPest>? potentialPests})
      : _stages = stages,
        _managementPractices = managementPractices,
        _varieties = varieties,
        _potentialPests = potentialPests;

  factory _$CropDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$CropDetailImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "image")
  final String? image;
  @override
  @JsonKey(name: "remarks")
  final dynamic remarks;
  final List<Stage>? _stages;
  @override
  @JsonKey(name: "stages")
  List<Stage>? get stages {
    final value = _stages;
    if (value == null) return null;
    if (_stages is EqualUnmodifiableListView) return _stages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ManagementPractice>? _managementPractices;
  @override
  @JsonKey(name: "management_practices")
  List<ManagementPractice>? get managementPractices {
    final value = _managementPractices;
    if (value == null) return null;
    if (_managementPractices is EqualUnmodifiableListView)
      return _managementPractices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Variety>? _varieties;
  @override
  @JsonKey(name: "varieties")
  List<Variety>? get varieties {
    final value = _varieties;
    if (value == null) return null;
    if (_varieties is EqualUnmodifiableListView) return _varieties;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<PotentialPest>? _potentialPests;
  @override
  @JsonKey(name: "potential_pests")
  List<PotentialPest>? get potentialPests {
    final value = _potentialPests;
    if (value == null) return null;
    if (_potentialPests is EqualUnmodifiableListView) return _potentialPests;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CropDetail(id: $id, name: $name, image: $image, remarks: $remarks, stages: $stages, managementPractices: $managementPractices, varieties: $varieties, potentialPests: $potentialPests)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CropDetailImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            const DeepCollectionEquality().equals(other.remarks, remarks) &&
            const DeepCollectionEquality().equals(other._stages, _stages) &&
            const DeepCollectionEquality()
                .equals(other._managementPractices, _managementPractices) &&
            const DeepCollectionEquality()
                .equals(other._varieties, _varieties) &&
            const DeepCollectionEquality()
                .equals(other._potentialPests, _potentialPests));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      image,
      const DeepCollectionEquality().hash(remarks),
      const DeepCollectionEquality().hash(_stages),
      const DeepCollectionEquality().hash(_managementPractices),
      const DeepCollectionEquality().hash(_varieties),
      const DeepCollectionEquality().hash(_potentialPests));

  /// Create a copy of CropDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CropDetailImplCopyWith<_$CropDetailImpl> get copyWith =>
      __$$CropDetailImplCopyWithImpl<_$CropDetailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CropDetailImplToJson(
      this,
    );
  }
}

abstract class _CropDetail implements CropDetail {
  const factory _CropDetail(
      {@JsonKey(name: "id") final int? id,
      @JsonKey(name: "name") final String? name,
      @JsonKey(name: "image") final String? image,
      @JsonKey(name: "remarks") final dynamic remarks,
      @JsonKey(name: "stages") final List<Stage>? stages,
      @JsonKey(name: "management_practices")
      final List<ManagementPractice>? managementPractices,
      @JsonKey(name: "varieties") final List<Variety>? varieties,
      @JsonKey(name: "potential_pests")
      final List<PotentialPest>? potentialPests}) = _$CropDetailImpl;

  factory _CropDetail.fromJson(Map<String, dynamic> json) =
      _$CropDetailImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "image")
  String? get image;
  @override
  @JsonKey(name: "remarks")
  dynamic get remarks;
  @override
  @JsonKey(name: "stages")
  List<Stage>? get stages;
  @override
  @JsonKey(name: "management_practices")
  List<ManagementPractice>? get managementPractices;
  @override
  @JsonKey(name: "varieties")
  List<Variety>? get varieties;
  @override
  @JsonKey(name: "potential_pests")
  List<PotentialPest>? get potentialPests;

  /// Create a copy of CropDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CropDetailImplCopyWith<_$CropDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ManagementPractice _$ManagementPracticeFromJson(Map<String, dynamic> json) {
  return _ManagementPractice.fromJson(json);
}

/// @nodoc
mixin _$ManagementPractice {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  dynamic get description => throw _privateConstructorUsedError;
  @JsonKey(name: "startDate")
  DateTime? get startDate => throw _privateConstructorUsedError;
  @JsonKey(name: "endDate")
  DateTime? get endDate => throw _privateConstructorUsedError;

  /// Serializes this ManagementPractice to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ManagementPractice
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ManagementPracticeCopyWith<ManagementPractice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ManagementPracticeCopyWith<$Res> {
  factory $ManagementPracticeCopyWith(
          ManagementPractice value, $Res Function(ManagementPractice) then) =
      _$ManagementPracticeCopyWithImpl<$Res, ManagementPractice>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "description") dynamic description,
      @JsonKey(name: "startDate") DateTime? startDate,
      @JsonKey(name: "endDate") DateTime? endDate});
}

/// @nodoc
class _$ManagementPracticeCopyWithImpl<$Res, $Val extends ManagementPractice>
    implements $ManagementPracticeCopyWith<$Res> {
  _$ManagementPracticeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ManagementPractice
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
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
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ManagementPracticeImplCopyWith<$Res>
    implements $ManagementPracticeCopyWith<$Res> {
  factory _$$ManagementPracticeImplCopyWith(_$ManagementPracticeImpl value,
          $Res Function(_$ManagementPracticeImpl) then) =
      __$$ManagementPracticeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "description") dynamic description,
      @JsonKey(name: "startDate") DateTime? startDate,
      @JsonKey(name: "endDate") DateTime? endDate});
}

/// @nodoc
class __$$ManagementPracticeImplCopyWithImpl<$Res>
    extends _$ManagementPracticeCopyWithImpl<$Res, _$ManagementPracticeImpl>
    implements _$$ManagementPracticeImplCopyWith<$Res> {
  __$$ManagementPracticeImplCopyWithImpl(_$ManagementPracticeImpl _value,
      $Res Function(_$ManagementPracticeImpl) _then)
      : super(_value, _then);

  /// Create a copy of ManagementPractice
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
  }) {
    return _then(_$ManagementPracticeImpl(
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
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ManagementPracticeImpl implements _ManagementPractice {
  const _$ManagementPracticeImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "description") this.description,
      @JsonKey(name: "startDate") this.startDate,
      @JsonKey(name: "endDate") this.endDate});

  factory _$ManagementPracticeImpl.fromJson(Map<String, dynamic> json) =>
      _$$ManagementPracticeImplFromJson(json);

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
  @JsonKey(name: "startDate")
  final DateTime? startDate;
  @override
  @JsonKey(name: "endDate")
  final DateTime? endDate;

  @override
  String toString() {
    return 'ManagementPractice(id: $id, name: $name, description: $description, startDate: $startDate, endDate: $endDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ManagementPracticeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name,
      const DeepCollectionEquality().hash(description), startDate, endDate);

  /// Create a copy of ManagementPractice
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ManagementPracticeImplCopyWith<_$ManagementPracticeImpl> get copyWith =>
      __$$ManagementPracticeImplCopyWithImpl<_$ManagementPracticeImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ManagementPracticeImplToJson(
      this,
    );
  }
}

abstract class _ManagementPractice implements ManagementPractice {
  const factory _ManagementPractice(
          {@JsonKey(name: "id") final int? id,
          @JsonKey(name: "name") final String? name,
          @JsonKey(name: "description") final dynamic description,
          @JsonKey(name: "startDate") final DateTime? startDate,
          @JsonKey(name: "endDate") final DateTime? endDate}) =
      _$ManagementPracticeImpl;

  factory _ManagementPractice.fromJson(Map<String, dynamic> json) =
      _$ManagementPracticeImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "description")
  dynamic get description;
  @override
  @JsonKey(name: "startDate")
  DateTime? get startDate;
  @override
  @JsonKey(name: "endDate")
  DateTime? get endDate;

  /// Create a copy of ManagementPractice
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ManagementPracticeImplCopyWith<_$ManagementPracticeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PotentialPest _$PotentialPestFromJson(Map<String, dynamic> json) {
  return _PotentialPest.fromJson(json);
}

/// @nodoc
mixin _$PotentialPest {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "image_url")
  String? get imageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "scientific_name")
  String? get scientificName => throw _privateConstructorUsedError;
  @JsonKey(name: "chemical_treatment")
  String? get chemicalTreatment => throw _privateConstructorUsedError;
  @JsonKey(name: "control_method")
  String? get controlMethod => throw _privateConstructorUsedError;
  @JsonKey(name: "category")
  int? get category => throw _privateConstructorUsedError;
  @JsonKey(name: "regions")
  List<dynamic>? get regions => throw _privateConstructorUsedError;

  /// Serializes this PotentialPest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PotentialPest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PotentialPestCopyWith<PotentialPest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PotentialPestCopyWith<$Res> {
  factory $PotentialPestCopyWith(
          PotentialPest value, $Res Function(PotentialPest) then) =
      _$PotentialPestCopyWithImpl<$Res, PotentialPest>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "image_url") String? imageUrl,
      @JsonKey(name: "scientific_name") String? scientificName,
      @JsonKey(name: "chemical_treatment") String? chemicalTreatment,
      @JsonKey(name: "control_method") String? controlMethod,
      @JsonKey(name: "category") int? category,
      @JsonKey(name: "regions") List<dynamic>? regions});
}

/// @nodoc
class _$PotentialPestCopyWithImpl<$Res, $Val extends PotentialPest>
    implements $PotentialPestCopyWith<$Res> {
  _$PotentialPestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PotentialPest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? imageUrl = freezed,
    Object? scientificName = freezed,
    Object? chemicalTreatment = freezed,
    Object? controlMethod = freezed,
    Object? category = freezed,
    Object? regions = freezed,
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
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      scientificName: freezed == scientificName
          ? _value.scientificName
          : scientificName // ignore: cast_nullable_to_non_nullable
              as String?,
      chemicalTreatment: freezed == chemicalTreatment
          ? _value.chemicalTreatment
          : chemicalTreatment // ignore: cast_nullable_to_non_nullable
              as String?,
      controlMethod: freezed == controlMethod
          ? _value.controlMethod
          : controlMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as int?,
      regions: freezed == regions
          ? _value.regions
          : regions // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PotentialPestImplCopyWith<$Res>
    implements $PotentialPestCopyWith<$Res> {
  factory _$$PotentialPestImplCopyWith(
          _$PotentialPestImpl value, $Res Function(_$PotentialPestImpl) then) =
      __$$PotentialPestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "image_url") String? imageUrl,
      @JsonKey(name: "scientific_name") String? scientificName,
      @JsonKey(name: "chemical_treatment") String? chemicalTreatment,
      @JsonKey(name: "control_method") String? controlMethod,
      @JsonKey(name: "category") int? category,
      @JsonKey(name: "regions") List<dynamic>? regions});
}

/// @nodoc
class __$$PotentialPestImplCopyWithImpl<$Res>
    extends _$PotentialPestCopyWithImpl<$Res, _$PotentialPestImpl>
    implements _$$PotentialPestImplCopyWith<$Res> {
  __$$PotentialPestImplCopyWithImpl(
      _$PotentialPestImpl _value, $Res Function(_$PotentialPestImpl) _then)
      : super(_value, _then);

  /// Create a copy of PotentialPest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? imageUrl = freezed,
    Object? scientificName = freezed,
    Object? chemicalTreatment = freezed,
    Object? controlMethod = freezed,
    Object? category = freezed,
    Object? regions = freezed,
  }) {
    return _then(_$PotentialPestImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      scientificName: freezed == scientificName
          ? _value.scientificName
          : scientificName // ignore: cast_nullable_to_non_nullable
              as String?,
      chemicalTreatment: freezed == chemicalTreatment
          ? _value.chemicalTreatment
          : chemicalTreatment // ignore: cast_nullable_to_non_nullable
              as String?,
      controlMethod: freezed == controlMethod
          ? _value.controlMethod
          : controlMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as int?,
      regions: freezed == regions
          ? _value._regions
          : regions // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PotentialPestImpl implements _PotentialPest {
  const _$PotentialPestImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "image_url") this.imageUrl,
      @JsonKey(name: "scientific_name") this.scientificName,
      @JsonKey(name: "chemical_treatment") this.chemicalTreatment,
      @JsonKey(name: "control_method") this.controlMethod,
      @JsonKey(name: "category") this.category,
      @JsonKey(name: "regions") final List<dynamic>? regions})
      : _regions = regions;

  factory _$PotentialPestImpl.fromJson(Map<String, dynamic> json) =>
      _$$PotentialPestImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "image_url")
  final String? imageUrl;
  @override
  @JsonKey(name: "scientific_name")
  final String? scientificName;
  @override
  @JsonKey(name: "chemical_treatment")
  final String? chemicalTreatment;
  @override
  @JsonKey(name: "control_method")
  final String? controlMethod;
  @override
  @JsonKey(name: "category")
  final int? category;
  final List<dynamic>? _regions;
  @override
  @JsonKey(name: "regions")
  List<dynamic>? get regions {
    final value = _regions;
    if (value == null) return null;
    if (_regions is EqualUnmodifiableListView) return _regions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PotentialPest(id: $id, name: $name, imageUrl: $imageUrl, scientificName: $scientificName, chemicalTreatment: $chemicalTreatment, controlMethod: $controlMethod, category: $category, regions: $regions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PotentialPestImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.scientificName, scientificName) ||
                other.scientificName == scientificName) &&
            (identical(other.chemicalTreatment, chemicalTreatment) ||
                other.chemicalTreatment == chemicalTreatment) &&
            (identical(other.controlMethod, controlMethod) ||
                other.controlMethod == controlMethod) &&
            (identical(other.category, category) ||
                other.category == category) &&
            const DeepCollectionEquality().equals(other._regions, _regions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      imageUrl,
      scientificName,
      chemicalTreatment,
      controlMethod,
      category,
      const DeepCollectionEquality().hash(_regions));

  /// Create a copy of PotentialPest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PotentialPestImplCopyWith<_$PotentialPestImpl> get copyWith =>
      __$$PotentialPestImplCopyWithImpl<_$PotentialPestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PotentialPestImplToJson(
      this,
    );
  }
}

abstract class _PotentialPest implements PotentialPest {
  const factory _PotentialPest(
          {@JsonKey(name: "id") final int? id,
          @JsonKey(name: "name") final String? name,
          @JsonKey(name: "image_url") final String? imageUrl,
          @JsonKey(name: "scientific_name") final String? scientificName,
          @JsonKey(name: "chemical_treatment") final String? chemicalTreatment,
          @JsonKey(name: "control_method") final String? controlMethod,
          @JsonKey(name: "category") final int? category,
          @JsonKey(name: "regions") final List<dynamic>? regions}) =
      _$PotentialPestImpl;

  factory _PotentialPest.fromJson(Map<String, dynamic> json) =
      _$PotentialPestImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "image_url")
  String? get imageUrl;
  @override
  @JsonKey(name: "scientific_name")
  String? get scientificName;
  @override
  @JsonKey(name: "chemical_treatment")
  String? get chemicalTreatment;
  @override
  @JsonKey(name: "control_method")
  String? get controlMethod;
  @override
  @JsonKey(name: "category")
  int? get category;
  @override
  @JsonKey(name: "regions")
  List<dynamic>? get regions;

  /// Create a copy of PotentialPest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PotentialPestImplCopyWith<_$PotentialPestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Stage _$StageFromJson(Map<String, dynamic> json) {
  return _Stage.fromJson(json);
}

/// @nodoc
mixin _$Stage {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "management_practices")
  List<ManagementPractice>? get managementPractices =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "potential_pests")
  List<PotentialPest>? get potentialPests => throw _privateConstructorUsedError;
  @JsonKey(name: "variety")
  dynamic get variety => throw _privateConstructorUsedError;
  @JsonKey(name: "crop")
  int? get crop => throw _privateConstructorUsedError;
  @JsonKey(name: "major_stage")
  dynamic get majorStage => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "duration_days")
  String? get durationDays => throw _privateConstructorUsedError;
  @JsonKey(name: "imagesList")
  List<dynamic>? get imagesList => throw _privateConstructorUsedError;
  @JsonKey(name: "startDate")
  DateTime? get startDate => throw _privateConstructorUsedError;
  @JsonKey(name: "endDate")
  DateTime? get endDate => throw _privateConstructorUsedError;

  /// Serializes this Stage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Stage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StageCopyWith<Stage> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StageCopyWith<$Res> {
  factory $StageCopyWith(Stage value, $Res Function(Stage) then) =
      _$StageCopyWithImpl<$Res, Stage>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "management_practices")
      List<ManagementPractice>? managementPractices,
      @JsonKey(name: "potential_pests") List<PotentialPest>? potentialPests,
      @JsonKey(name: "variety") dynamic variety,
      @JsonKey(name: "crop") int? crop,
      @JsonKey(name: "major_stage") dynamic majorStage,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "duration_days") String? durationDays,
      @JsonKey(name: "imagesList") List<dynamic>? imagesList,
      @JsonKey(name: "startDate") DateTime? startDate,
      @JsonKey(name: "endDate") DateTime? endDate});
}

/// @nodoc
class _$StageCopyWithImpl<$Res, $Val extends Stage>
    implements $StageCopyWith<$Res> {
  _$StageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Stage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? managementPractices = freezed,
    Object? potentialPests = freezed,
    Object? variety = freezed,
    Object? crop = freezed,
    Object? majorStage = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? durationDays = freezed,
    Object? imagesList = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      managementPractices: freezed == managementPractices
          ? _value.managementPractices
          : managementPractices // ignore: cast_nullable_to_non_nullable
              as List<ManagementPractice>?,
      potentialPests: freezed == potentialPests
          ? _value.potentialPests
          : potentialPests // ignore: cast_nullable_to_non_nullable
              as List<PotentialPest>?,
      variety: freezed == variety
          ? _value.variety
          : variety // ignore: cast_nullable_to_non_nullable
              as dynamic,
      crop: freezed == crop
          ? _value.crop
          : crop // ignore: cast_nullable_to_non_nullable
              as int?,
      majorStage: freezed == majorStage
          ? _value.majorStage
          : majorStage // ignore: cast_nullable_to_non_nullable
              as dynamic,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      durationDays: freezed == durationDays
          ? _value.durationDays
          : durationDays // ignore: cast_nullable_to_non_nullable
              as String?,
      imagesList: freezed == imagesList
          ? _value.imagesList
          : imagesList // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StageImplCopyWith<$Res> implements $StageCopyWith<$Res> {
  factory _$$StageImplCopyWith(
          _$StageImpl value, $Res Function(_$StageImpl) then) =
      __$$StageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "management_practices")
      List<ManagementPractice>? managementPractices,
      @JsonKey(name: "potential_pests") List<PotentialPest>? potentialPests,
      @JsonKey(name: "variety") dynamic variety,
      @JsonKey(name: "crop") int? crop,
      @JsonKey(name: "major_stage") dynamic majorStage,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "duration_days") String? durationDays,
      @JsonKey(name: "imagesList") List<dynamic>? imagesList,
      @JsonKey(name: "startDate") DateTime? startDate,
      @JsonKey(name: "endDate") DateTime? endDate});
}

/// @nodoc
class __$$StageImplCopyWithImpl<$Res>
    extends _$StageCopyWithImpl<$Res, _$StageImpl>
    implements _$$StageImplCopyWith<$Res> {
  __$$StageImplCopyWithImpl(
      _$StageImpl _value, $Res Function(_$StageImpl) _then)
      : super(_value, _then);

  /// Create a copy of Stage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? managementPractices = freezed,
    Object? potentialPests = freezed,
    Object? variety = freezed,
    Object? crop = freezed,
    Object? majorStage = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? durationDays = freezed,
    Object? imagesList = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
  }) {
    return _then(_$StageImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      managementPractices: freezed == managementPractices
          ? _value._managementPractices
          : managementPractices // ignore: cast_nullable_to_non_nullable
              as List<ManagementPractice>?,
      potentialPests: freezed == potentialPests
          ? _value._potentialPests
          : potentialPests // ignore: cast_nullable_to_non_nullable
              as List<PotentialPest>?,
      variety: freezed == variety
          ? _value.variety
          : variety // ignore: cast_nullable_to_non_nullable
              as dynamic,
      crop: freezed == crop
          ? _value.crop
          : crop // ignore: cast_nullable_to_non_nullable
              as int?,
      majorStage: freezed == majorStage
          ? _value.majorStage
          : majorStage // ignore: cast_nullable_to_non_nullable
              as dynamic,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      durationDays: freezed == durationDays
          ? _value.durationDays
          : durationDays // ignore: cast_nullable_to_non_nullable
              as String?,
      imagesList: freezed == imagesList
          ? _value._imagesList
          : imagesList // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StageImpl implements _Stage {
  const _$StageImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "management_practices")
      final List<ManagementPractice>? managementPractices,
      @JsonKey(name: "potential_pests")
      final List<PotentialPest>? potentialPests,
      @JsonKey(name: "variety") this.variety,
      @JsonKey(name: "crop") this.crop,
      @JsonKey(name: "major_stage") this.majorStage,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "description") this.description,
      @JsonKey(name: "duration_days") this.durationDays,
      @JsonKey(name: "imagesList") final List<dynamic>? imagesList,
      @JsonKey(name: "startDate") this.startDate,
      @JsonKey(name: "endDate") this.endDate})
      : _managementPractices = managementPractices,
        _potentialPests = potentialPests,
        _imagesList = imagesList;

  factory _$StageImpl.fromJson(Map<String, dynamic> json) =>
      _$$StageImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  final List<ManagementPractice>? _managementPractices;
  @override
  @JsonKey(name: "management_practices")
  List<ManagementPractice>? get managementPractices {
    final value = _managementPractices;
    if (value == null) return null;
    if (_managementPractices is EqualUnmodifiableListView)
      return _managementPractices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<PotentialPest>? _potentialPests;
  @override
  @JsonKey(name: "potential_pests")
  List<PotentialPest>? get potentialPests {
    final value = _potentialPests;
    if (value == null) return null;
    if (_potentialPests is EqualUnmodifiableListView) return _potentialPests;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "variety")
  final dynamic variety;
  @override
  @JsonKey(name: "crop")
  final int? crop;
  @override
  @JsonKey(name: "major_stage")
  final dynamic majorStage;
  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "description")
  final String? description;
  @override
  @JsonKey(name: "duration_days")
  final String? durationDays;
  final List<dynamic>? _imagesList;
  @override
  @JsonKey(name: "imagesList")
  List<dynamic>? get imagesList {
    final value = _imagesList;
    if (value == null) return null;
    if (_imagesList is EqualUnmodifiableListView) return _imagesList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "startDate")
  final DateTime? startDate;
  @override
  @JsonKey(name: "endDate")
  final DateTime? endDate;

  @override
  String toString() {
    return 'Stage(id: $id, managementPractices: $managementPractices, potentialPests: $potentialPests, variety: $variety, crop: $crop, majorStage: $majorStage, name: $name, description: $description, durationDays: $durationDays, imagesList: $imagesList, startDate: $startDate, endDate: $endDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StageImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._managementPractices, _managementPractices) &&
            const DeepCollectionEquality()
                .equals(other._potentialPests, _potentialPests) &&
            const DeepCollectionEquality().equals(other.variety, variety) &&
            (identical(other.crop, crop) || other.crop == crop) &&
            const DeepCollectionEquality()
                .equals(other.majorStage, majorStage) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.durationDays, durationDays) ||
                other.durationDays == durationDays) &&
            const DeepCollectionEquality()
                .equals(other._imagesList, _imagesList) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_managementPractices),
      const DeepCollectionEquality().hash(_potentialPests),
      const DeepCollectionEquality().hash(variety),
      crop,
      const DeepCollectionEquality().hash(majorStage),
      name,
      description,
      durationDays,
      const DeepCollectionEquality().hash(_imagesList),
      startDate,
      endDate);

  /// Create a copy of Stage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StageImplCopyWith<_$StageImpl> get copyWith =>
      __$$StageImplCopyWithImpl<_$StageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StageImplToJson(
      this,
    );
  }
}

abstract class _Stage implements Stage {
  const factory _Stage(
      {@JsonKey(name: "id") final int? id,
      @JsonKey(name: "management_practices")
      final List<ManagementPractice>? managementPractices,
      @JsonKey(name: "potential_pests")
      final List<PotentialPest>? potentialPests,
      @JsonKey(name: "variety") final dynamic variety,
      @JsonKey(name: "crop") final int? crop,
      @JsonKey(name: "major_stage") final dynamic majorStage,
      @JsonKey(name: "name") final String? name,
      @JsonKey(name: "description") final String? description,
      @JsonKey(name: "duration_days") final String? durationDays,
      @JsonKey(name: "imagesList") final List<dynamic>? imagesList,
      @JsonKey(name: "startDate") final DateTime? startDate,
      @JsonKey(name: "endDate") final DateTime? endDate}) = _$StageImpl;

  factory _Stage.fromJson(Map<String, dynamic> json) = _$StageImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "management_practices")
  List<ManagementPractice>? get managementPractices;
  @override
  @JsonKey(name: "potential_pests")
  List<PotentialPest>? get potentialPests;
  @override
  @JsonKey(name: "variety")
  dynamic get variety;
  @override
  @JsonKey(name: "crop")
  int? get crop;
  @override
  @JsonKey(name: "major_stage")
  dynamic get majorStage;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "description")
  String? get description;
  @override
  @JsonKey(name: "duration_days")
  String? get durationDays;
  @override
  @JsonKey(name: "imagesList")
  List<dynamic>? get imagesList;
  @override
  @JsonKey(name: "startDate")
  DateTime? get startDate;
  @override
  @JsonKey(name: "endDate")
  DateTime? get endDate;

  /// Create a copy of Stage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StageImplCopyWith<_$StageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Variety _$VarietyFromJson(Map<String, dynamic> json) {
  return _Variety.fromJson(json);
}

/// @nodoc
mixin _$Variety {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  dynamic get description => throw _privateConstructorUsedError;
  @JsonKey(name: "recommended_year")
  dynamic get recommendedYear => throw _privateConstructorUsedError;
  @JsonKey(name: "production_capacity")
  dynamic get productionCapacity => throw _privateConstructorUsedError;
  @JsonKey(name: "days_to_maturity")
  dynamic get daysToMaturity => throw _privateConstructorUsedError;
  @JsonKey(name: "variety_types")
  List<dynamic>? get varietyTypes => throw _privateConstructorUsedError;
  @JsonKey(name: "recommended_regions")
  List<dynamic>? get recommendedRegions => throw _privateConstructorUsedError;
  @JsonKey(name: "resistant_pests")
  List<dynamic>? get resistantPests => throw _privateConstructorUsedError;
  @JsonKey(name: "is_approved")
  bool? get isApproved => throw _privateConstructorUsedError;
  @JsonKey(name: "is_denotified")
  bool? get isDenotified => throw _privateConstructorUsedError;
  @JsonKey(name: "denotify_reasons")
  String? get denotifyReasons => throw _privateConstructorUsedError;

  /// Serializes this Variety to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Variety
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VarietyCopyWith<Variety> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VarietyCopyWith<$Res> {
  factory $VarietyCopyWith(Variety value, $Res Function(Variety) then) =
      _$VarietyCopyWithImpl<$Res, Variety>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "description") dynamic description,
      @JsonKey(name: "recommended_year") dynamic recommendedYear,
      @JsonKey(name: "production_capacity") dynamic productionCapacity,
      @JsonKey(name: "days_to_maturity") dynamic daysToMaturity,
      @JsonKey(name: "variety_types") List<dynamic>? varietyTypes,
      @JsonKey(name: "recommended_regions") List<dynamic>? recommendedRegions,
      @JsonKey(name: "resistant_pests") List<dynamic>? resistantPests,
      @JsonKey(name: "is_approved") bool? isApproved,
      @JsonKey(name: "is_denotified") bool? isDenotified,
      @JsonKey(name: "denotify_reasons") String? denotifyReasons});
}

/// @nodoc
class _$VarietyCopyWithImpl<$Res, $Val extends Variety>
    implements $VarietyCopyWith<$Res> {
  _$VarietyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Variety
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? recommendedYear = freezed,
    Object? productionCapacity = freezed,
    Object? daysToMaturity = freezed,
    Object? varietyTypes = freezed,
    Object? recommendedRegions = freezed,
    Object? resistantPests = freezed,
    Object? isApproved = freezed,
    Object? isDenotified = freezed,
    Object? denotifyReasons = freezed,
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
      recommendedYear: freezed == recommendedYear
          ? _value.recommendedYear
          : recommendedYear // ignore: cast_nullable_to_non_nullable
              as dynamic,
      productionCapacity: freezed == productionCapacity
          ? _value.productionCapacity
          : productionCapacity // ignore: cast_nullable_to_non_nullable
              as dynamic,
      daysToMaturity: freezed == daysToMaturity
          ? _value.daysToMaturity
          : daysToMaturity // ignore: cast_nullable_to_non_nullable
              as dynamic,
      varietyTypes: freezed == varietyTypes
          ? _value.varietyTypes
          : varietyTypes // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      recommendedRegions: freezed == recommendedRegions
          ? _value.recommendedRegions
          : recommendedRegions // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      resistantPests: freezed == resistantPests
          ? _value.resistantPests
          : resistantPests // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      isApproved: freezed == isApproved
          ? _value.isApproved
          : isApproved // ignore: cast_nullable_to_non_nullable
              as bool?,
      isDenotified: freezed == isDenotified
          ? _value.isDenotified
          : isDenotified // ignore: cast_nullable_to_non_nullable
              as bool?,
      denotifyReasons: freezed == denotifyReasons
          ? _value.denotifyReasons
          : denotifyReasons // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VarietyImplCopyWith<$Res> implements $VarietyCopyWith<$Res> {
  factory _$$VarietyImplCopyWith(
          _$VarietyImpl value, $Res Function(_$VarietyImpl) then) =
      __$$VarietyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "description") dynamic description,
      @JsonKey(name: "recommended_year") dynamic recommendedYear,
      @JsonKey(name: "production_capacity") dynamic productionCapacity,
      @JsonKey(name: "days_to_maturity") dynamic daysToMaturity,
      @JsonKey(name: "variety_types") List<dynamic>? varietyTypes,
      @JsonKey(name: "recommended_regions") List<dynamic>? recommendedRegions,
      @JsonKey(name: "resistant_pests") List<dynamic>? resistantPests,
      @JsonKey(name: "is_approved") bool? isApproved,
      @JsonKey(name: "is_denotified") bool? isDenotified,
      @JsonKey(name: "denotify_reasons") String? denotifyReasons});
}

/// @nodoc
class __$$VarietyImplCopyWithImpl<$Res>
    extends _$VarietyCopyWithImpl<$Res, _$VarietyImpl>
    implements _$$VarietyImplCopyWith<$Res> {
  __$$VarietyImplCopyWithImpl(
      _$VarietyImpl _value, $Res Function(_$VarietyImpl) _then)
      : super(_value, _then);

  /// Create a copy of Variety
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? recommendedYear = freezed,
    Object? productionCapacity = freezed,
    Object? daysToMaturity = freezed,
    Object? varietyTypes = freezed,
    Object? recommendedRegions = freezed,
    Object? resistantPests = freezed,
    Object? isApproved = freezed,
    Object? isDenotified = freezed,
    Object? denotifyReasons = freezed,
  }) {
    return _then(_$VarietyImpl(
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
      recommendedYear: freezed == recommendedYear
          ? _value.recommendedYear
          : recommendedYear // ignore: cast_nullable_to_non_nullable
              as dynamic,
      productionCapacity: freezed == productionCapacity
          ? _value.productionCapacity
          : productionCapacity // ignore: cast_nullable_to_non_nullable
              as dynamic,
      daysToMaturity: freezed == daysToMaturity
          ? _value.daysToMaturity
          : daysToMaturity // ignore: cast_nullable_to_non_nullable
              as dynamic,
      varietyTypes: freezed == varietyTypes
          ? _value._varietyTypes
          : varietyTypes // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      recommendedRegions: freezed == recommendedRegions
          ? _value._recommendedRegions
          : recommendedRegions // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      resistantPests: freezed == resistantPests
          ? _value._resistantPests
          : resistantPests // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      isApproved: freezed == isApproved
          ? _value.isApproved
          : isApproved // ignore: cast_nullable_to_non_nullable
              as bool?,
      isDenotified: freezed == isDenotified
          ? _value.isDenotified
          : isDenotified // ignore: cast_nullable_to_non_nullable
              as bool?,
      denotifyReasons: freezed == denotifyReasons
          ? _value.denotifyReasons
          : denotifyReasons // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VarietyImpl implements _Variety {
  const _$VarietyImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "description") this.description,
      @JsonKey(name: "recommended_year") this.recommendedYear,
      @JsonKey(name: "production_capacity") this.productionCapacity,
      @JsonKey(name: "days_to_maturity") this.daysToMaturity,
      @JsonKey(name: "variety_types") final List<dynamic>? varietyTypes,
      @JsonKey(name: "recommended_regions")
      final List<dynamic>? recommendedRegions,
      @JsonKey(name: "resistant_pests") final List<dynamic>? resistantPests,
      @JsonKey(name: "is_approved") this.isApproved,
      @JsonKey(name: "is_denotified") this.isDenotified,
      @JsonKey(name: "denotify_reasons") this.denotifyReasons})
      : _varietyTypes = varietyTypes,
        _recommendedRegions = recommendedRegions,
        _resistantPests = resistantPests;

  factory _$VarietyImpl.fromJson(Map<String, dynamic> json) =>
      _$$VarietyImplFromJson(json);

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
  @JsonKey(name: "recommended_year")
  final dynamic recommendedYear;
  @override
  @JsonKey(name: "production_capacity")
  final dynamic productionCapacity;
  @override
  @JsonKey(name: "days_to_maturity")
  final dynamic daysToMaturity;
  final List<dynamic>? _varietyTypes;
  @override
  @JsonKey(name: "variety_types")
  List<dynamic>? get varietyTypes {
    final value = _varietyTypes;
    if (value == null) return null;
    if (_varietyTypes is EqualUnmodifiableListView) return _varietyTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _recommendedRegions;
  @override
  @JsonKey(name: "recommended_regions")
  List<dynamic>? get recommendedRegions {
    final value = _recommendedRegions;
    if (value == null) return null;
    if (_recommendedRegions is EqualUnmodifiableListView)
      return _recommendedRegions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _resistantPests;
  @override
  @JsonKey(name: "resistant_pests")
  List<dynamic>? get resistantPests {
    final value = _resistantPests;
    if (value == null) return null;
    if (_resistantPests is EqualUnmodifiableListView) return _resistantPests;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "is_approved")
  final bool? isApproved;
  @override
  @JsonKey(name: "is_denotified")
  final bool? isDenotified;
  @override
  @JsonKey(name: "denotify_reasons")
  final String? denotifyReasons;

  @override
  String toString() {
    return 'Variety(id: $id, name: $name, description: $description, recommendedYear: $recommendedYear, productionCapacity: $productionCapacity, daysToMaturity: $daysToMaturity, varietyTypes: $varietyTypes, recommendedRegions: $recommendedRegions, resistantPests: $resistantPests, isApproved: $isApproved, isDenotified: $isDenotified, denotifyReasons: $denotifyReasons)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VarietyImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality()
                .equals(other.recommendedYear, recommendedYear) &&
            const DeepCollectionEquality()
                .equals(other.productionCapacity, productionCapacity) &&
            const DeepCollectionEquality()
                .equals(other.daysToMaturity, daysToMaturity) &&
            const DeepCollectionEquality()
                .equals(other._varietyTypes, _varietyTypes) &&
            const DeepCollectionEquality()
                .equals(other._recommendedRegions, _recommendedRegions) &&
            const DeepCollectionEquality()
                .equals(other._resistantPests, _resistantPests) &&
            (identical(other.isApproved, isApproved) ||
                other.isApproved == isApproved) &&
            (identical(other.isDenotified, isDenotified) ||
                other.isDenotified == isDenotified) &&
            (identical(other.denotifyReasons, denotifyReasons) ||
                other.denotifyReasons == denotifyReasons));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(recommendedYear),
      const DeepCollectionEquality().hash(productionCapacity),
      const DeepCollectionEquality().hash(daysToMaturity),
      const DeepCollectionEquality().hash(_varietyTypes),
      const DeepCollectionEquality().hash(_recommendedRegions),
      const DeepCollectionEquality().hash(_resistantPests),
      isApproved,
      isDenotified,
      denotifyReasons);

  /// Create a copy of Variety
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VarietyImplCopyWith<_$VarietyImpl> get copyWith =>
      __$$VarietyImplCopyWithImpl<_$VarietyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VarietyImplToJson(
      this,
    );
  }
}

abstract class _Variety implements Variety {
  const factory _Variety(
      {@JsonKey(name: "id") final int? id,
      @JsonKey(name: "name") final String? name,
      @JsonKey(name: "description") final dynamic description,
      @JsonKey(name: "recommended_year") final dynamic recommendedYear,
      @JsonKey(name: "production_capacity") final dynamic productionCapacity,
      @JsonKey(name: "days_to_maturity") final dynamic daysToMaturity,
      @JsonKey(name: "variety_types") final List<dynamic>? varietyTypes,
      @JsonKey(name: "recommended_regions")
      final List<dynamic>? recommendedRegions,
      @JsonKey(name: "resistant_pests") final List<dynamic>? resistantPests,
      @JsonKey(name: "is_approved") final bool? isApproved,
      @JsonKey(name: "is_denotified") final bool? isDenotified,
      @JsonKey(name: "denotify_reasons")
      final String? denotifyReasons}) = _$VarietyImpl;

  factory _Variety.fromJson(Map<String, dynamic> json) = _$VarietyImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "description")
  dynamic get description;
  @override
  @JsonKey(name: "recommended_year")
  dynamic get recommendedYear;
  @override
  @JsonKey(name: "production_capacity")
  dynamic get productionCapacity;
  @override
  @JsonKey(name: "days_to_maturity")
  dynamic get daysToMaturity;
  @override
  @JsonKey(name: "variety_types")
  List<dynamic>? get varietyTypes;
  @override
  @JsonKey(name: "recommended_regions")
  List<dynamic>? get recommendedRegions;
  @override
  @JsonKey(name: "resistant_pests")
  List<dynamic>? get resistantPests;
  @override
  @JsonKey(name: "is_approved")
  bool? get isApproved;
  @override
  @JsonKey(name: "is_denotified")
  bool? get isDenotified;
  @override
  @JsonKey(name: "denotify_reasons")
  String? get denotifyReasons;

  /// Create a copy of Variety
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VarietyImplCopyWith<_$VarietyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
