import 'package:equatable/equatable.dart';

class RoadsFromDivisionEntity extends Equatable {
  final List<RoadsFromDivisionDataEntity>? data;

  const RoadsFromDivisionEntity({this.data});

  @override
  List<Object?> get props => [data];
}

class RoadsFromDivisionDataEntity extends Equatable {
  final String? roadRefno;
  final String? roadName;
  final String? linkCode;
  final String? linkName;
  final String? distName;
  final String? divName;

  const RoadsFromDivisionDataEntity({
    this.roadRefno,
    this.roadName,
    this.linkCode,
    this.linkName,
    this.distName,
    this.divName,
  });

  @override
  List<Object?> get props => [
        roadRefno,
        roadName,
        linkName,
        linkCode,
        distName,
        divName,
      ];
}
