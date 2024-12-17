part of 'crops_bloc.dart';

@freezed
class CropsState with _$CropsState {
  const factory CropsState.loaded({
    @Default([]) List<CropsModel> crops,
    CropDetail? cropsDetail,
    @Default([]) List<MajorStage> majorStages,
    @Default([]) List<CropThreat> cropsThreats,
    @Default({}) Map<CropThreat, List<PotentialPest>> cropPestMap,
    @Default({}) Map<MajorStage, List<Stage>>? majorSubStage,
    @Default(false) bool isLoading,
    @Default(false) bool hasError,
  }) = _Loaded;
}
