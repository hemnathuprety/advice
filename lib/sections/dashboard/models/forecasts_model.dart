import 'package:freezed_annotation/freezed_annotation.dart';

part 'forecasts_model.freezed.dart';
part 'forecasts_model.g.dart';

@freezed
class ForecastsModel with _$ForecastsModel {
  const factory ForecastsModel({
    @JsonKey(name: 'summaryPreviousWeek') String? summaryPreviousWeek,
    @JsonKey(name: 'summaryNextWeek') String? summaryNextWeek,
    @JsonKey(name: 'dataNextWeek') List<List<int?>>? dataNextWeek,
    @JsonKey(name: 'geom') String? geom,
  }) = _ForecastsModel;

  factory ForecastsModel.fromJson(Map<String, Object?> json) => _$ForecastsModelFromJson(json);
}

