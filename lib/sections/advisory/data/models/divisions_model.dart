import 'package:advice/sections/advisory/domain/entities/divisions_entity.dart';

class DivisionsModel extends DivisionsEntity {
  const DivisionsModel({
    required super.divisions,
  });

  factory DivisionsModel.fromJson(Map<String, dynamic> json) => DivisionsModel(
        divisions: json['data'].cast<String>(),
      );
}
