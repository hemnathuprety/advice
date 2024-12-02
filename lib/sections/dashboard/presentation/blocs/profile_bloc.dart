import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:advice/core/error/failures.dart';
import 'package:advice/sections/auth/data/models/profile_model.dart';
import 'package:advice/sections/auth/domain/entities/profile_entity.dart';
import 'package:advice/sections/auth/domain/usecases/logout_usecase.dart';
import 'package:advice/sections/auth/domain/usecases/user_profile_usecase.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

part 'profile_event.dart';
part 'profile_state.dart';

@injectable
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final UserProfileUseCase profileUseCase;
  final LogoutUseCase logoutUseCase;

  ProfileBloc({required this.profileUseCase, required this.logoutUseCase}) : super(ProfileInitial()) {
    on<GetProfileEvent>(_getProfileEvent);
    on<LogoutEvent>(_logoutEvent);
  }

  FutureOr<void> _getProfileEvent(
      GetProfileEvent event, Emitter<ProfileState> emit) async {
    emit(ProfileLoading());
    try {
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
    }
  }

  FutureOr<void> _logoutEvent(
      LogoutEvent event, Emitter<ProfileState> emit) async {
    emit(ProfileLoading());
    try {
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
    }
  }
}

