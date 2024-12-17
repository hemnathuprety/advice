part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial({
    ProfileModel? profileModel,
    @Default(false) bool isLoading,
    @Default(false) bool hasError,
    @Default("") String errorMessage,
  }) = _Initial;
}
