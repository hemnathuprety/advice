import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

part 'profile_event.dart';
part 'profile_state.dart';

@injectable
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc() : super(ProfileInitial()) {
    on<GetProfileEvent>(_getProfileEvent);
    on<LogoutEvent>(_logoutEvent);
  }

  FutureOr<void> _getProfileEvent(
      GetProfileEvent event, Emitter<ProfileState> emit) async {
    emit(ProfileLoading());
    /*try {
      final Either<Failure, ProfileModel?> response =
          await profileUseCase.call(null);
      response.fold((l) {
        final BaseResponseFailure errorMessage = l as BaseResponseFailure;

        emit(ProfileFailed(errorMessage: errorMessage.message));
        log('profile error in bloc: ${errorMessage.message}');
      }, (data) async {
        log('profile: ${data?.email}');
        if (data != null) emit(ProfileSuccess(profileEntity: data));
      });
    } catch (e) {
      log('profile error in bloc: $e');
    }*/
  }

  FutureOr<void> _logoutEvent(
      LogoutEvent event, Emitter<ProfileState> emit) async {
    emit(ProfileLoading());
    /*try {
      final Either<Failure, bool?> response =
          await logoutUseCase.call(null);
      response.fold((l) {
        final BaseResponseFailure errorMessage = l as BaseResponseFailure;

        emit(ProfileFailed(errorMessage: errorMessage.message));
        log('profile error in bloc: ${errorMessage.message}');
      }, (data) async {
        if (data != null) emit(ProfileInitial());
      });
    } catch (e) {
      log('profile error in bloc: $e');
    }*/
  }
}
