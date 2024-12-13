part of 'observation_bloc.dart';

@freezed
class ObservationState with _$ObservationState {
  const factory ObservationState.loaded({
    @Default([]) List<ProvinceModel> provinceList,
    @Default([]) List<MunicipalityModel> municipalityList,
    DistrictsModel? districts,
    @Default([]) List<CropsModel> crops,
    @Default([]) List<Stage> stages,
    @Default([]) List<ManagementPractice> managementPractices,
    @Default([]) List<PotentialPest> potentialPests,
    @Default([]) List<Variety> varieties,
    @Default([]) List<WaterResource> waterResource,
    LocationsModel? locations,
    @Default(false) bool isLoading,
    @Default(false) bool hasError,
    @Default(false) bool isEnterManually,
    @Default(false) bool isLocationLoaded,
    @Default(false) bool hasObservationSubmitted,
  }) = _Loaded;

}
