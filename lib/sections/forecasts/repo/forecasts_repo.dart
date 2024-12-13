import 'package:advice/core/dio/dio_helper.dart';
import 'package:advice/sections/dashboard/models/forecasts_model.dart';
import 'package:injectable/injectable.dart';

@injectable
class  ForecastsRepo {
  final DioHelper dio;

  ForecastsRepo({required this.dio});

  Future<ForecastsModel> getForecastDetails(
      String startDate, String endDate, String administrativeId) async {
    var response = await dio.dio.get(
        '/agro/get_data_by_date_range/?start_date=$startDate&end_date=$endDate&administrative_id=$administrativeId&record=district');
    return ForecastsModel.fromJson(response.data);
  }
}
