part of 'profile_bloc.dart';

abstract class ProfileState extends Equatable {
  const ProfileState();

  @override
  List<Object> get props => [];
}

class ProfileInitial extends ProfileState {}

class ProfileLoading extends ProfileState {
  @override
  List<Object> get props => [];
}

class ProfileSuccess extends ProfileState {
  const ProfileSuccess();

  @override
  List<Object> get props => [];
}

class ProfileFailed extends ProfileState {
  final String errorMessage;

  const ProfileFailed({required this.errorMessage});

  @override
  List<Object> get props => [errorMessage];
}
