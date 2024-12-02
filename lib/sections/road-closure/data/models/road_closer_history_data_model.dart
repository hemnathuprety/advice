import 'package:advice/sections/road-closure/data/models/road_closer_history_model.dart';
import 'package:advice/sections/road-closure/domain/entities/road_closer_history_data.dart';

class RoadCloserHistoryDataModel extends RoadCloserHistoryData {
  const RoadCloserHistoryDataModel(
      {required super.data, required super.totalRows});

  factory RoadCloserHistoryDataModel.fromJson(Map<String, dynamic> json) {
    var data = <RoadCloserHistoryModel>[];
    if (json['data'] != null) {
      json['data'].forEach((v) {
        data.add(RoadCloserHistoryModel.fromJson(v));
      });
    }

    return RoadCloserHistoryDataModel(
        data: data, totalRows: json['total_rows']);
  }
}
