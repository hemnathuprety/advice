part of 'select_location_bloc.dart';

@freezed
class SelectLocationEvent with _$SelectLocationEvent {
  const factory SelectLocationEvent.started() = _Started;

  const factory SelectLocationEvent.provinceSelected(ProvinceModel province) =
      _ProvinceSelected;

  const factory SelectLocationEvent.districtSelected(Districts district) =
      _DistrictSelected;

  const factory SelectLocationEvent.municipalitySelected(
      MunicipalityModel municipality) = _MunicipalitySelected;
}
