part of 'crops_bloc.dart';

@freezed
class CropsEvent with _$CropsEvent {
  const factory CropsEvent.load() = _Load;
  const factory CropsEvent.detail(String cropId) = _Detail;
}
