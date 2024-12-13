import 'package:advice/core/base_error_response_entity.dart';
import 'package:advice/sections/auth/models/login_entity.dart';
import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  @override
  List<Object?> get props => [];
}

//General Failures
class ServerFailure extends Failure {
  final String message;

  ServerFailure({
    this.message = 'Something went wrong',
  });
}

class UnAuthFailure extends Failure {}

class CacheFailure extends Failure {}

class LoginFailure extends Failure {
  final LoginEntity loginError;

  LoginFailure({required this.loginError});
}

//text field failures
class EmptyFieldFailure extends Failure {}

class InvalidInputFailure extends Failure {}

class BaseResponseFailure extends Failure {
  final String message;

  BaseResponseFailure({required this.message});
}

class BaseResponseErrorFailure extends Failure {
  BaseResponseErrorFailure({required this.baseResponseError});

  final BaseResponseErrorEntity baseResponseError;
}
