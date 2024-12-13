part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.initial({
    ProfileModel? profileModel,
    @Default(false) bool isLoading,
    @Default(false) bool hasError,
  }) = _Initial;
}
