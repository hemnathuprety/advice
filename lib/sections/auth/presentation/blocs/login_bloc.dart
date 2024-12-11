import 'dart:async';

import 'package:advice/sections/auth/models/login_entity.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

part 'login_event.dart';
part 'login_state.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial()) {
    on<PerformLoginEvent>(_performLoginEvent);
    on<ResetDataEvent>(_resetDataEvent);
  }

  FutureOr<void> _performLoginEvent(
      PerformLoginEvent event, Emitter<LoginState> emit) async {
    emit(LoginLoading());
    /*try {
      final response = await loginUseCase.call(LoginRequestEntity(
        email: event.email,
        password: event.password,
      ));
      response.fold((l) {
        final BaseResponseFailure errorMessage = l as BaseResponseFailure;

        emit(LoginFailed(errorMessage: errorMessage.message));
        log('login error in bloc: ${errorMessage.message}');
      }, (data) async {
        emit(LoginSuccess(loginEntity: data));
      });
    } catch (e) {
      log('login error in bloc: $e');
    }*/
  }

  FutureOr<void> _resetDataEvent(
      ResetDataEvent event, Emitter<LoginState> emit) {
    emit(LoginInitial());
  }
}
