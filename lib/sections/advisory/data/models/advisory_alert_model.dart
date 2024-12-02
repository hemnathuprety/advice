import 'package:advice/sections/advisory/domain/entities/advisory_alert_entity.dart';

class AdvisoryAlertModel extends AdvisoryAlertEntity {
  const AdvisoryAlertModel(
      {required super.results, required super.totalRows, /* required super.page*/
  });

  factory AdvisoryAlertModel.fromJson(Map<String, dynamic> json) {
    var data = <AdvisoryAlertDataModel>[];
    if (json['results'] != null) {
      json['results'].forEach((v) {
        data.add(AdvisoryAlertDataModel.fromJson(v));
      });
    }

    return AdvisoryAlertModel(
      results: data,
      totalRows: json['total_rows'],
     /* page: json['page'],*/
    );
  }
}

class AdvisoryAlertDataModel extends AdvisoryAlertDataEntity {
  const AdvisoryAlertDataModel({
    required super.id,
    required super.advisoryType,
    required super.createdDate,
    required super.message,
    required super.triggeredByUserId,
    required super.subject,
    required super.triggeredByUserName,
    required super.emails,
  });

  factory AdvisoryAlertDataModel.fromJson(Map<String, dynamic> json) =>
      AdvisoryAlertDataModel(
        id: json['id'],
        advisoryType: json['advisory_type'],
        createdDate: json['created_date'],
        message: json['message'],
        triggeredByUserId: json['triggered_by_user_id'],
        subject: json['subject'],
        triggeredByUserName: json['triggered_by_user_name'],
        emails: json['emails'].cast<String>(),
      );
}
