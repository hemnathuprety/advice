part of 'login_bloc.dart';

abstract class LoginState extends Equatable {
  const LoginState();

  @override
  List<Object> get props => [];
}

class LoginInitial extends LoginState {}

class LoginLoading extends LoginState {
  @override
  List<Object> get props => [];
}

class EmailPasswordVerified extends LoginState {
  @override
  List<Object> get props => [];
}

class VerificationError extends LoginState {
  final Map<String, dynamic> errors;
  const VerificationError({required this.errors});

  @override
  List<Object> get props => [errors];
}

class LoginSuccess extends LoginState {
  final LoginEntity loginEntity;

  const LoginSuccess({required this.loginEntity});

  @override
  List<Object> get props => [loginEntity];
}

class LoginFailed extends LoginState {
  final String errorMessage;

  const LoginFailed({required this.errorMessage});

  @override
  List<Object> get props => [errorMessage];
}
