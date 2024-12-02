import 'package:advice/core/base_error_response_entity.dart';

class BaseErrorResponseModel extends BaseResponseErrorEntity {
  const BaseErrorResponseModel({required super.message});

  factory BaseErrorResponseModel.fromJson(Map<String, dynamic> json) =>
      BaseErrorResponseModel(
        message: json["message"] ?? "",
      );
}
