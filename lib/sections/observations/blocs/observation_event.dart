part of 'observation_bloc.dart';

@freezed
class ObservationEvent with _$ObservationEvent {
  const factory ObservationEvent.load() = _Load;
  const factory ObservationEvent.reset() = _Reset;
  const factory ObservationEvent.districtLoad(int provinceId) = _DistrictLoad;
  const factory ObservationEvent.municipalityLoad(int districtId) = _MunicipalityLoad;
  const factory ObservationEvent.cropLoad() = _CropLoad;
  const factory ObservationEvent.cropDetailLoad(int cropId) = _CropDetailLoad;
  const factory ObservationEvent.locationDetailLoad(String lat, String long) = _LocationDetailLoad;
  const factory ObservationEvent.observationLoad(PostingObservationModel observationModel) = _ObservationLoad;
  const factory ObservationEvent.isEnterManuallyLoad(bool value) = _IsEnterManuallyLoad;
}
