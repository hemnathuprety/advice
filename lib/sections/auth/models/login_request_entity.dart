import 'package:equatable/equatable.dart';

class LoginRequestEntity extends Equatable {
  final String? email;
  final String? password;

  const LoginRequestEntity({this.email, this.password});

  @override
  List<Object?> get props => [];
}
