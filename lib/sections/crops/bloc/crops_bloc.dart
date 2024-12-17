import 'package:advice/sections/crops/model/crop_detail.dart';
import 'package:advice/sections/crops/model/crop_threat.dart';
import 'package:advice/sections/crops/model/crops_model.dart';
import 'package:advice/sections/crops/model/major_stage.dart';
import 'package:advice/sections/crops/repo/crops_list_repo.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'crops_bloc.freezed.dart';
part 'crops_event.dart';
part 'crops_state.dart';

@injectable
class CropsBloc extends Bloc<CropsEvent, CropsState> {
  final CropslistRepo cropslistRepo;
  CropsBloc({required this.cropslistRepo}) : super(const CropsState.loaded()) {
    on<CropsEvent>((event, emit) async {
      await event.when(load: () async {
        emit(state.copyWith(isLoading: true));
        var crops = await cropslistRepo.getCropsList();
        emit(CropsState.loaded(crops: crops, isLoading: false));
      }, detail: (String cropId) async {
        emit(state.copyWith(isLoading: true));
        var cropDetail = await cropslistRepo.getCropsDetail(cropId);
        var majorStage = await cropslistRepo.getMajorStage();
        var cropThreat = await cropslistRepo.getCropThreat();
        Map<CropThreat, List<PotentialPest>> cropPestMap = {};
        Map<MajorStage, List<Stage>> majorSubStage = {};

        for (var cropThreat in cropThreat) {
          cropPestMap[cropThreat] = cropDetail.potentialPests!
              .where((pest) => pest.category == cropThreat.id)
              .toList();
        }

        for (var major in majorStage) {
          majorSubStage[major] = cropDetail.stages!
              .where((pest) => pest.majorStage == major.id)
              .toList();
        }

        emit(CropsState.loaded(
            cropsDetail: cropDetail,
            majorStages: majorStage,
            cropsThreats: cropThreat,
            cropPestMap: cropPestMap,
            majorSubStage: majorSubStage,
            isLoading: false));
      });
    });
  }
}
