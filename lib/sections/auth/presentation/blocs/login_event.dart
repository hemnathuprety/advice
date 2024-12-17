part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.started() = _Started;

  const factory LoginEvent.performLogin(String password, String email) =
      _PerformLogin;

  const factory LoginEvent.resetData() = _ResetData;
}
