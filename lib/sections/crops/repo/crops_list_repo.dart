import 'package:advice/sections/crops/model/crop_detail.dart';
import 'package:advice/sections/crops/model/crops_model.dart';
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
}
