import 'package:advice/sections/advisory/models/advisory_model.dart';
import 'package:injectable/injectable.dart';

import '../../../core/dio/dio_helper.dart';

@injectable
class AdvisoryListRepo {
  final DioHelper dio;

  AdvisoryListRepo({required this.dio});

  Future<List<AdvisoryModel>?> getAdvisoryList() async {
    try {
      var response = await dio.dio.get('/agro/current-advisory-reports');
      if (response.statusCode == 200) {
        List<AdvisoryModel> cropsList = [];
        for (var item in response.data) {
          cropsList.add(AdvisoryModel.fromJson(item));
        }
        return cropsList;
      } else {
       var data = AdvisoryModel(
          crop: Crop(name: 'Rice'),
          observationSummary:
          'Some Description will go here to enlighten the user about this map.',
          color: 'Critical',
          advisoryStartDate: 'Jan 08 2024',
          pdf:
          "https://np-moald-api.rimes.int/v1/agro/media/advisory_dhanusha_25_10_2024.pdf",
        );
        return [data, data, data, data, data];
      }
    } catch (e) {
      var data = AdvisoryModel(
        crop: Crop(name: 'Rice'),
        observationSummary:
        'Some Description will go here to enlighten the user about this map.',
        color: 'Critical',
        advisoryStartDate: 'Jan 08 2024',
        pdf:
        "https://np-moald-api.rimes.int/v1/agro/media/advisory_dhanusha_25_10_2024.pdf",
      );
      return [data, data, data, data, data];
    }
  }
}
