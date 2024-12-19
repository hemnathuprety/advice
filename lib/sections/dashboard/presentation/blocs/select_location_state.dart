part of 'select_location_bloc.dart';

@freezed
class SelectLocationState with _$SelectLocationState {
  const factory SelectLocationState.initial({
    @Default([]) List<ProvinceModel> provinceList,
    DistrictsModel? districts,
    @Default([]) List<MunicipalityModel> municipalityList,
    ProvinceModel? selectedProvince,
    Districts? selectedDistrict,
    MunicipalityModel? selectedMunicipality,
  }) = _Initial;
}
