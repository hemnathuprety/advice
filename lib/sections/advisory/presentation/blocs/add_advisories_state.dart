part of 'add_advisories_bloc.dart';

@immutable
class AddAdvisoriesState extends Equatable {
  final ViewStatus status;
  final String error;
  final int? roadClosureId;
  final int? uploadStage;
  final DivisionsEntity divisionsEntity;
  final DistrictsEntity districtsEntity;
  final RoadsFromDivisionEntity roadsDivisionEntity;
  final List<RoadsFromDivisionDataEntity> roadFromDivisionEntity;
  final List<RoadsFromDivisionDataEntity?> roadLinkDivisionEntity;

  const AddAdvisoriesState({
    this.status = ViewStatus.initial,
    this.divisionsEntity = const DivisionsEntity(divisions: []),
    this.districtsEntity = const DistrictsEntity(districtsEntity: []),
    this.roadsDivisionEntity = const RoadsFromDivisionEntity(data: []),
    this.roadFromDivisionEntity = const [],
    this.roadLinkDivisionEntity = const [],
    this.error = "",
    this.roadClosureId,
    this.uploadStage = 1,
  });

  AddAdvisoriesState copyWith({
    ViewStatus? status,
    String? error,
    int? roadClosureId,
    int? uploadStage,
    bool? isImagesUploadSuccess,
    DivisionsEntity? divisionsEntity,
    DistrictsEntity? districtsEntity,
    RoadsFromDivisionEntity? roadsDivisionEntity,
    List<RoadsFromDivisionDataEntity>? roadFromDivisionEntity,
    List<RoadsFromDivisionDataEntity?>? roadLinkDivisionEntity,
  }) {
    return AddAdvisoriesState(
      status: status ?? this.status,
      error: error ?? this.error,
      uploadStage: uploadStage ?? this.uploadStage,
      roadClosureId: roadClosureId ?? this.roadClosureId,
      divisionsEntity: divisionsEntity ?? this.divisionsEntity,
      districtsEntity: districtsEntity ?? this.districtsEntity,
      roadsDivisionEntity: roadsDivisionEntity ?? this.roadsDivisionEntity,
      roadFromDivisionEntity:
          roadFromDivisionEntity ?? this.roadFromDivisionEntity,
      roadLinkDivisionEntity:
          roadLinkDivisionEntity ?? this.roadLinkDivisionEntity,
    );
  }

  @override
  List<Object?> get props => [
        status,
        error,
        roadClosureId,
        uploadStage,
        divisionsEntity,
        districtsEntity,
        roadsDivisionEntity,
        roadFromDivisionEntity,
        roadLinkDivisionEntity
      ];
}
