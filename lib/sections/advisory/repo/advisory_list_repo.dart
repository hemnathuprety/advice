import 'dart:convert';

import 'package:advice/sections/advisory/models/advisory_model.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';

import '../../../core/dio/dio_helper.dart';

@injectable
class AdvisoryListRepo {
  final DioHelper dio;

  AdvisoryListRepo({required this.dio});

  Future<List<AdvisoryModel>?> getAdvisoryList(
      int districtId, bool status) async {
    try {
      var response = await dio.dio.get(status
          ? '/agro/current-advisory-reports?district_id=$districtId&status=latest'
          : '/agro/current-advisory-reports?district_id=$districtId');
      if (response.statusCode == 200) {
        List<AdvisoryModel> cropsList = [];
        for (var item in response.data) {
          cropsList.add(AdvisoryModel.fromJson(item));
        }
        return cropsList;
      } else {
        var path =
            status ? 'assets/json/current_advisory_list.json' : 'assets/json/advisory_list.json';
        String jsonString = await rootBundle.loadString(path);
        var json = jsonDecode(jsonString);
        List<AdvisoryModel> cropsList = [];
        for (var item in json) {
          cropsList.add(AdvisoryModel.fromJson(item));
        }
        return cropsList;
      }
    } catch (e) {
      var path =
          status ? 'assets/json/current_advisory_list.json' : 'assets/json/advisory_list.json';

      String jsonString = await rootBundle.loadString(path);
      var json = jsonDecode(jsonString);
      List<AdvisoryModel> cropsList = [];
      for (var item in json) {
        cropsList.add(AdvisoryModel.fromJson(item));
      }
      return cropsList;
    }
  }
}
