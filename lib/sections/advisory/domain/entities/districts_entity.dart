import 'package:equatable/equatable.dart';

class DistrictsEntity extends Equatable {
  final List<DistrictsData>? districtsEntity;

  const DistrictsEntity({this.districtsEntity});

  @override
  List<Object?> get props => [districtsEntity];

}

class DistrictsData extends Equatable {
  final String? districtId;
  final String? districtName;
  final String? provinceId;

  const DistrictsData({this.districtId, this.districtName, this.provinceId});

  @override
  List<Object?> get props => [districtId, districtName, provinceId];

}
