import 'dart:convert';
import 'dart:developer';

import 'package:advice/core/utils/shared_pref_manager.dart';
import 'package:advice/sections/advisory/models/advisory_model.dart';
import 'package:advice/sections/advisory/repo/advisory_list_repo.dart';
import 'package:advice/sections/observations/models/locations_model.dart';
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
        load: (bool status) async {
          emit(state.copyWith(isLoading: true));
          var strModel = await SharedPrefManager.instance.getUserLocation();
          if (strModel.isNotEmpty) {
            var data = jsonDecode(strModel);
            LocationsModel location = LocationsModel.fromJson(data);
            List<AdvisoryModel>? model = await advisoryListRepo.getAdvisoryList(
              location.district?.id ?? 0,
              status,
            );
            log(model.toString());
            if (model == null) {
              emit(
                  AdvisoryListState.loaded(advisoryList: [], isLoading: false));
            } else {
              emit(AdvisoryListState.loaded(
                advisoryList: model,
                isLoading: false,
              ));
            }
          } else {
            emit(AdvisoryListState.loaded(advisoryList: [], isLoading: false));
          }
        },
      );
    });
  }
}
