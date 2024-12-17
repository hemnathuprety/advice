import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'alerts_event.dart';
part 'alerts_state.dart';
part 'alerts_bloc.freezed.dart';

@injectable
class AlertsBloc extends Bloc<AlertsEvent, AlertsState> {
  AlertsBloc() : super(const AlertsState.initial()) {
    on<AlertsEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
