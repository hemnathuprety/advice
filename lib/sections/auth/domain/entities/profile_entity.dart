import 'package:equatable/equatable.dart';

class ProfileEntity extends Equatable {
  final String? id;
  final String? name;
  final String? email;
  final String? role;
  final String? department;
  final String? isDeleted;
  final String? officeId;
  final String? isFirst;
  final String? office;

  const ProfileEntity({
    this.id,
    this.name,
    this.email,
    this.role,
    this.department,
    this.isDeleted,
    this.officeId,
    this.isFirst,
    this.office,
  });

  @override
  List<Object?> get props =>
      [id, name, email, role, department, isDeleted, officeId, isFirst, office];
}
