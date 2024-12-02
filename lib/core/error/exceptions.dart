import 'package:equatable/equatable.dart';

class ServerException extends Equatable implements Exception {
  final String? errorMessage;
  const ServerException({this.errorMessage});

  @override
  List<Object?> get props => [errorMessage];
}

class UnAuthException extends Equatable implements Exception {
  final String? errorMessage;
  const UnAuthException({this.errorMessage});

  @override
  List<Object?> get props => [errorMessage];
}

class CacheException implements Exception {}

class BaseResponseErrorException implements Exception {
  final String? message;
  const BaseResponseErrorException({required this.message});
}
