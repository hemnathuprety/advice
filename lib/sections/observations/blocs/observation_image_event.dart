part of 'observation_image_bloc.dart';

@freezed
class ObservationImageEvent with _$ObservationImageEvent {
  const factory ObservationImageEvent.uploaded(XFile imageFile) = _Uploaded;
}
