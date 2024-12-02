import 'package:equatable/equatable.dart';

class AdvisoryAlertEntity extends Equatable {
  final List<AdvisoryAlertDataEntity>? results;
  final String? totalRows;

  //final int? page;

  const AdvisoryAlertEntity({
    required this.results,
    required this.totalRows,
    /*required this.page*/
  });

  @override
  List<Object?> get props => [
        results,
        totalRows, /*page*/
      ];
}

class AdvisoryAlertDataEntity extends Equatable {
  final String? id;
  final String? advisoryType;
  final String? createdDate;
  final String? message;
  final String? triggeredByUserId;
  final String? subject;
  final String? triggeredByUserName;
  final List<String>? emails;

  const AdvisoryAlertDataEntity({
    required this.id,
    required this.advisoryType,
    required this.createdDate,
    required this.message,
    required this.triggeredByUserId,
    required this.subject,
    required this.triggeredByUserName,
    required this.emails,
  });

  @override
  List<Object?> get props => [
        id,
        advisoryType,
        createdDate,
        message,
        triggeredByUserId,
        subject,
        triggeredByUserName,
        emails,
      ];
}
