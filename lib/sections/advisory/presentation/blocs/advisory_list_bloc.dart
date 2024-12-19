import 'dart:developer';

import 'package:advice/sections/advisory/models/advisory_model.dart';
import 'package:advice/sections/advisory/repo/advisory_list_repo.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'advisory_list_bloc.freezed.dart';
part 'advisory_list_event.dart';
part 'advisory_list_state.dart';

@injectable
class AdvisoryListBloc extends Bloc<AdvisoryListEvent, AdvisoryListState> {
  final AdvisoryListRepo advisoryListRepo;

  AdvisoryListBloc({required this.advisoryListRepo})
      : super(const AdvisoryListState.loaded()) {
    on<AdvisoryListEvent>((event, emit) async {
      await event.when(
        load: () async {
          emit(state.copyWith(isLoading: true));
          var crops = await advisoryListRepo.getAdvisoryList();
          log(crops.toString());
          if (crops == null) {
            emit(AdvisoryListState.loaded(advisoryList: [], isLoading: false));
          } else {
            emit(AdvisoryListState.loaded(
              advisoryList: crops,
              isLoading: false,
            ));
          }
        },
      );
    });
  }
}
