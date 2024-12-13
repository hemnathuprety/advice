import 'package:advice/sections/crops/model/crop_detail.dart';
import 'package:advice/sections/crops/model/crop_threat.dart';
import 'package:advice/sections/crops/model/crops_model.dart';
import 'package:advice/sections/crops/model/major_stage.dart';
import 'package:injectable/injectable.dart';

import '../../../core/dio/dio_helper.dart';

@injectable
class CropslistRepo {
  final DioHelper dio;

  CropslistRepo({required this.dio});

  Future<List<CropsModel>> getCropsList() async {
    var response = await dio.dio.get('/agro/crops?fields=id,name,image');
    List<CropsModel> cropsList = [];
    for (var item in response.data) {
      cropsList.add(CropsModel.fromJson(item));
    }
    return cropsList;
  }

  Future<CropDetail> getCropsDetail(cropId) async {
    var response = await dio.dio.get('/agro/crops/$cropId');
    return CropDetail.fromJson(response.data);
  }

  Future<List<MajorStage>> getMajorStage() async {
    var response = await dio.dio.get('/agro/major-crop-stages/');
    List<MajorStage> stagesList = [];
    for (var item in response.data) {
      stagesList.add(MajorStage.fromJson(item));
    }
    return stagesList;
  }

  Future<List<CropThreat>> getCropThreat() async {
    var response = await dio.dio.get('/agro/crop-threat-category');
    List<CropThreat> stagesList = [];
    for (var item in response.data) {
      stagesList.add(CropThreat.fromJson(item));
    }
    return stagesList;
  }
}
