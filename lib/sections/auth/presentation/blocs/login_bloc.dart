import 'dart:convert';

import 'package:advice/core/utils/shared_pref_manager.dart';
import 'package:advice/sections/auth/models/login_error_model.dart';
import 'package:advice/sections/auth/models/login_request_entity.dart';
import 'package:advice/sections/auth/models/profile_model.dart';
import 'package:advice/sections/auth/repo/auth_repo.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'login_bloc.freezed.dart';
part 'login_event.dart';
part 'login_state.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AuthRepo authRepo;

  LoginBloc({required this.authRepo}) : super(const LoginState.initial()) {
    on<LoginEvent>((event, emit) async {
      await event.when(
        started: () {},
        performLogin: (password, email) async {
          emit(state.copyWith(isLoading: true));
          var profileModel = await authRepo.getLoginDetails(LoginRequestEntity(
              email: email, password: password, username: email));
          if (profileModel is ProfileModel) {
            await SharedPrefManager.instance.setUserProfile(jsonEncode(profileModel));
            emit(
              state.copyWith(profileModel: profileModel, isLoading: false),
            );
          } else if (profileModel is LoginErrorModel) {
            emit(
              state.copyWith(
                  hasError: true,
                  errorMessage: profileModel.detail ?? "",
                  isLoading: false),
            );
          } else {
            emit(
              state.copyWith(
                  hasError: true,
                  errorMessage:
                      "No active account found with the given credentials",
                  isLoading: false),
            );
          }
        },
        resetData: () {
          emit(LoginState.initial());
        },
      );
    });
  }
}
