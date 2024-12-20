import 'dart:convert';

import 'package:advice/core/utils/shared_pref_manager.dart';
import 'package:advice/sections/observations/models/districts_model.dart';
import 'package:advice/sections/observations/models/locations_model.dart';
import 'package:advice/sections/observations/models/municipality_model.dart';
import 'package:advice/sections/observations/models/province_model.dart';
import 'package:advice/sections/observations/repo/observation_repo.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'select_location_bloc.freezed.dart';

part 'select_location_event.dart';

part 'select_location_state.dart';

@injectable
class SelectLocationBloc
    extends Bloc<SelectLocationEvent, SelectLocationState> {
  final ObservationRepo observationRepo;

  SelectLocationBloc({required this.observationRepo})
      : super(const SelectLocationState.initial()) {
    on<SelectLocationEvent>((event, emit) async {
      await event.when(
        started: () async {
          List<ProvinceModel> observationList =
              await observationRepo.getProvinceList();
          emit(
            state.copyWith(provinceList: observationList),
          );

          var strModel = await SharedPrefManager.instance.getUserLocation();
          if (strModel.isNotEmpty) {
            var data = jsonDecode(strModel);
            var location = LocationsModel.fromJson(data);
            if (location.province != null) {
              add(SelectLocationEvent.provinceSelected(location.province!));
            }
          }
        },
        provinceSelected: (province) async {
          emit(state.copyWith(selectedProvince: province));
          DistrictsModel districtsModel =
              await observationRepo.getDistrictDetail(province.id);
          emit(
            state.copyWith(districts: districtsModel),
          );
          var strModel = await SharedPrefManager.instance.getUserLocation();
          if (strModel.isNotEmpty) {
            var data = jsonDecode(strModel);
            var location = LocationsModel.fromJson(data);
            if (location.district != null) {
              add(SelectLocationEvent.districtSelected(location.district!));
            }
            emit(state.copyWith(selectedMunicipality: location.municipality));
          }
        },
        districtSelected: (district) async {
          emit(state.copyWith(selectedDistrict: district));
          List<MunicipalityModel> municipalityList =
              await observationRepo.getMunicipalityList(district.id);
          emit(
            state.copyWith(municipalityList: municipalityList),
          );
        },
        municipalitySelected: (municipality) {
          emit(state.copyWith(selectedMunicipality: municipality));
        },
      );
    });
  }
}
