// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecasts_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ForecastsModelImpl _$$ForecastsModelImplFromJson(Map<String, dynamic> json) =>
    _$ForecastsModelImpl(
      summaryPreviousWeek: json['summaryPreviousWeek'] as String?,
      summaryNextWeek: json['summaryNextWeek'] as String?,
      dataNextWeek: (json['dataNextWeek'] as List<dynamic>?)
          ?.map((e) =>
              (e as List<dynamic>).map((e) => (e as num?)?.toInt()).toList())
          .toList(),
      geom: json['geom'] as String?,
    );

Map<String, dynamic> _$$ForecastsModelImplToJson(
        _$ForecastsModelImpl instance) =>
    <String, dynamic>{
      'summaryPreviousWeek': instance.summaryPreviousWeek,
      'summaryNextWeek': instance.summaryNextWeek,
      'dataNextWeek': instance.dataNextWeek,
      'geom': instance.geom,
    };
