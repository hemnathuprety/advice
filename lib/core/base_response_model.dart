import 'package:advice/core/base_response_entity.dart';

class BaseResponseModel extends BaseResponseEntity {
  const BaseResponseModel({
    required super.data,
    required super.status,
    required super.id,
    required super.message,
  });

  factory BaseResponseModel.fromJson(Map<String, dynamic> json) =>
      BaseResponseModel(
        status: json["status"] ?? false,
        data: json["data"],
        id: json["id"],
        message: json["message"],
      );
}
