part of 'login_bloc.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();

  @override
  List<Object> get props => [];
}

class EmailPasswordChangedEvent extends LoginEvent {
  final String email;
  final String password;

  const EmailPasswordChangedEvent(
      {required this.password, required this.email});

  @override
  List<Object> get props => [email, password];
}

class PerformLoginEvent extends LoginEvent {
  final String email;
  final String password;

  const PerformLoginEvent({
    required this.email,
    required this.password,
  });

  @override
  List<Object> get props => [
        email,
        password,
      ];
}

class ResetDataEvent extends LoginEvent {
  const ResetDataEvent();

  @override
  List<Object> get props => [];
}
