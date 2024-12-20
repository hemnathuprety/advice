part of 'advisory_list_bloc.dart';

@freezed
class AdvisoryListEvent with _$AdvisoryListEvent {
  const factory AdvisoryListEvent.load(bool status) = _Load;
}
