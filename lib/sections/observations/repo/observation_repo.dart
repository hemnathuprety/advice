import 'dart:convert';
import 'dart:developer';

import 'package:advice/core/dio/dio_helper.dart';
import 'package:advice/sections/observations/models/districts_model.dart';
import 'package:advice/sections/observations/models/image_upload_response.dart';
import 'package:advice/sections/observations/models/locations_model.dart';
import 'package:advice/sections/observations/models/municipality_model.dart';
import 'package:advice/sections/observations/models/posting_observation_model.dart';
import 'package:advice/sections/observations/models/province_model.dart';
import 'package:advice/sections/observations/models/water_resource.dart';
import 'package:camera/camera.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@injectable
class ObservationRepo {
  final DioHelper dio;

  ObservationRepo({required this.dio});

  Future<List<ProvinceModel>> getProvinceList() async {
    var response = await dio.dio.get('/agro/province');
    List<ProvinceModel> provinceList = [];
    for (var item in response.data) {
      provinceList.add(ProvinceModel.fromJson(item));
    }
    return provinceList;
  }

  Future<LocationsModel> getLocationDetail(lat, lon) async {
    var response = await dio.dio.get('/agro/locations/?lat=$lat&lon=$lon');
    return LocationsModel.fromJson(response.data);
  }

  Future<DistrictsModel> getDistrictDetail(provinceId) async {
    var response = await dio.dio.get('/agro/provinces/$provinceId');
    return DistrictsModel.fromJson(response.data);
  }

  Future<List<MunicipalityModel>> getMunicipalityList(districtId) async {
    var response =
        await dio.dio.get('/agro/municipality/?district=$districtId');
    List<MunicipalityModel> municipalityList = [];
    for (var item in response.data) {
      municipalityList.add(MunicipalityModel.fromJson(item));
    }
    return municipalityList;
  }

  Future<List<WaterResource>> getWaterResourceList() async {
    var response = await dio.dio.get('/agro/water-resource-types');
    List<WaterResource> municipalityList = [];
    for (var item in response.data) {
      municipalityList.add(WaterResource.fromJson(item));
    }
    return municipalityList;
  }

  Future<ImageUploadResponse?> uploadObservationImage(XFile imageFile) async {
    try {
      // Prepare FormData with multiple files
      var data = FormData.fromMap({
        'file': [
          await MultipartFile.fromFile(imageFile.path,
              filename: 'image_observation.jpg')
        ],
      });

      var response = await dio.dio.post(
        '/agro/upload/',
        options: Options(
          method: 'POST',
        ),
        data: data,
      );

      if (response.statusCode == 200) {
        return ImageUploadResponse.fromJson(response.data);
      } else {
        return null;
      }
    } catch (e) {
      return null;
    }
  }

  Future<bool> postObservationModel(
      PostingObservationModel observationModel) async {
    try {
      log(jsonEncode(observationModel));
      Response response = await dio.dio.post(
        "/agro/observations/",
        data: observationModel,
      );

      return response.statusCode == 201;
    } catch (e) {
      return false;
    }
  }
}
