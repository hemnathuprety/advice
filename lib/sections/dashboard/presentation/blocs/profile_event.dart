part of 'profile_bloc.dart';

abstract class ProfileEvent extends Equatable {
  const ProfileEvent();

  @override
  List<Object> get props => [];
}

class GetProfileEvent extends ProfileEvent {
  const GetProfileEvent();

  @override
  List<Object> get props => [];
}

class LogoutEvent extends ProfileEvent {
  const LogoutEvent();

  @override
  List<Object> get props => [];
}
