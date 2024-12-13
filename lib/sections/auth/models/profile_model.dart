
import 'package:advice/sections/auth/models/profile_entity.dart';

class ProfileModel extends ProfileEntity {
  const ProfileModel({
    required super.id,
    required super.name,
    required super.email,
    required super.role,
    required super.department,
    required super.isDeleted,
    required super.officeId,
    required super.isFirst,
    required super.office,
  });

  factory ProfileModel.fromJson(Map<String, dynamic> json) => ProfileModel(
        id: json['id'],
        name: json['name'],
        email: json['email'],
        role: json['role'],
        department: json['department'],
        isDeleted: json['is_deleted'],
        officeId: json['office_id'],
        isFirst: json['is_first'],
        office: json['office'],
      );

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['email'] = email;
    data['role'] = role;
    data['department'] = department;
    data['is_deleted'] = isDeleted;
    data['office_id'] = officeId;
    data['is_first'] = isFirst;
    data['office'] = office;
    return data;
  }
}
