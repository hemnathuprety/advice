import 'package:freezed_annotation/freezed_annotation.dart';

part 'image_upload_response.freezed.dart';
part 'image_upload_response.g.dart';

@freezed
class ImageUploadResponse with _$ImageUploadResponse {
  const factory ImageUploadResponse({
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'file_name') String? fileName,
  }) = _ImageUploadResponse;

  factory ImageUploadResponse.fromJson(Map<String, Object?> json) => _$ImageUploadResponseFromJson(json);
}

