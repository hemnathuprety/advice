import 'dart:convert';
import 'dart:developer';

import 'package:advice/core/utils/shared_pref_manager.dart';
import 'package:advice/sections/auth/models/profile_model.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'profile_bloc.freezed.dart';
part 'profile_event.dart';
part 'profile_state.dart';

@injectable
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc() : super(const ProfileState.initial()) {
    on<ProfileEvent>((event, emit) async {
      await event.when(
        started: () async {
          var strModel = await SharedPrefManager.instance.getUserProfile();
          log("User Profile $strModel");
          if (strModel.isNotEmpty) {
            var data = jsonDecode(strModel);
            var profileModel = ProfileModel.fromJson(data);
            emit(
              state.copyWith(profileModel: profileModel, isLoading: false),
            );
          }
        },
        logout: () async {
          await SharedPrefManager.instance.setUserProfile("");
          emit(
            state.copyWith(profileModel: null, isLoading: false),
          );
        },
      );
    });
  }
}
