import 'package:advice/sections/crops/model/crop_detail.dart';
import 'package:advice/sections/crops/model/crops_model.dart';
import 'package:advice/sections/crops/repo/crops_list_repo.dart';
import 'package:advice/sections/observations/models/districts_model.dart';
import 'package:advice/sections/observations/models/locations_model.dart';
import 'package:advice/sections/observations/models/municipality_model.dart';
import 'package:advice/sections/observations/models/posting_observation_model.dart';
import 'package:advice/sections/observations/models/province_model.dart';
import 'package:advice/sections/observations/models/water_resource.dart';
import 'package:advice/sections/observations/repo/observation_repo.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'observation_bloc.freezed.dart';
part 'observation_event.dart';
part 'observation_state.dart';

@injectable
class ObservationBloc extends Bloc<ObservationEvent, ObservationState> {
  final ObservationRepo observationRepo;
  final CropslistRepo cropslistRepo;

  ObservationBloc({
    required this.observationRepo,
    required this.cropslistRepo,
  }) : super(const ObservationState.loaded()) {
    on<ObservationEvent>((event, emit) async {
      await event.when(load: () async {
        emit(state.copyWith(isLoading: false));
        List<ProvinceModel> observationList =
            await observationRepo.getProvinceList();
        emit(
          state.copyWith(provinceList: observationList, isLoading: false),
        );
        List<WaterResource> waterResource =
            await observationRepo.getWaterResourceList();

        emit(
          state.copyWith(waterResource: waterResource, isLoading: false),
        );
      }, districtLoad: (int provinceId) async {
        emit(state.copyWith(isLoading: false));
        DistrictsModel districtsModel =
            await observationRepo.getDistrictDetail(provinceId);
        emit(
          state.copyWith(districts: districtsModel, isLoading: false),
        );
      }, municipalityLoad: (int districtId) async {
        emit(state.copyWith(isLoading: false));
        List<MunicipalityModel> municipalityList =
            await observationRepo.getMunicipalityList(districtId);
        emit(
          state.copyWith(municipalityList: municipalityList, isLoading: false),
        );
      }, cropLoad: () async {
        emit(state.copyWith(isLoading: false));
        var crops = await cropslistRepo.getCropsList();
        emit(
          state.copyWith(crops: crops, isLoading: false),
        );
      }, cropDetailLoad: (int cropId) async {
        emit(state.copyWith(isLoading: false));
        var cropDetail = await cropslistRepo.getCropsDetail(cropId);
        List<ManagementPractice> managementPractices = [];
        managementPractices.addAll(cropDetail.managementPractices ?? []);
        managementPractices.add(ManagementPractice(name: "Other", id: null));
        List<PotentialPest> potentialPests = [];
        potentialPests.addAll(cropDetail.potentialPests ?? []);
        potentialPests.add(PotentialPest(name: "Other", id: null));
        emit(
          state.copyWith(
            stages: cropDetail.stages ?? [],
            managementPractices: managementPractices,
            potentialPests: potentialPests,
            varieties: cropDetail.varieties ?? [],
            isLoading: false,
          ),
        );
      }, observationLoad: (PostingObservationModel observationModel) async {
        emit(state.copyWith(isLoading: true));
        bool result =
            await observationRepo.postObservationModel(observationModel);
        if (result) {
          emit(state.copyWith(hasObservationSubmitted: true, isLoading: false));
        } else {
          emit(state.copyWith(hasError: true, isLoading: false));
        }
      }, isEnterManuallyLoad: (bool value) {
        emit(state.copyWith(isEnterManually: value));
      }, locationDetailLoad: (String lat, String long) async {
        emit(state.copyWith(isLoading: true));
        LocationsModel locationsModel =
            await observationRepo.getLocationDetail(lat, long);
        emit(
          state.copyWith(
            locations: locationsModel,
            isLoading: false,
            isLocationLoaded: true,
          ),
        );
      }, reset: () {
        emit(
          state.copyWith(
            isLoading: false,
            hasError: false,
            isLocationLoaded: false,
            hasObservationSubmitted: false,
          ),
        );
      });
    });
  }
}
