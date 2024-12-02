import 'package:advice/sections/auth/domain/entities/profile_entity.dart';
import 'package:equatable/equatable.dart';

class LoginEntity extends Equatable {
  final DataEntity? data;

  const LoginEntity({this.data});

  @override
  List<Object?> get props => [];
}

class DataEntity extends Equatable {
  final String? token;
  final ProfileEntity? profile;

  const DataEntity({this.token, this.profile});

  @override
  List<Object?> get props => [];
}
