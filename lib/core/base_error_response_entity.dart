import 'package:equatable/equatable.dart';

class BaseResponseErrorEntity  extends Equatable {
  final String? message;

  const BaseResponseErrorEntity({required this.message});

  @override
  List<Object?> get props => [message];
}
