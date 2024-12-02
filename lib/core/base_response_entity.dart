import 'package:equatable/equatable.dart';

class BaseResponseEntity extends Equatable {
  final bool? status;
  final String? message;
  final int? id;
  final dynamic data;

  const BaseResponseEntity(
      {required this.status, required this.data, required this.id, required this.message});

  @override
  List<Object?> get props => [status, data, id, message];
}
