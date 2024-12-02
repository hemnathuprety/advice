import 'package:advice/sections/bridge-closure/data/models/bridge_closer_history_model.dart';
import 'package:advice/sections/bridge-closure/domain/entities/bridge_closer_history_data.dart';

class BridgeCloserHistoryDataModel extends BridgeCloserHistoryData {
  const BridgeCloserHistoryDataModel(
      {required super.data, required super.totalRows});

  factory BridgeCloserHistoryDataModel.fromJson(Map<String, dynamic> json) {
    var data = <BridgeCloserHistoryModel>[];
    if (json['data'] != null) {
      json['data'].forEach((v) {
        data.add(BridgeCloserHistoryModel.fromJson(v));
      });
    }

    return BridgeCloserHistoryDataModel(
        data: data, totalRows: json['total_rows']);
  }
}
