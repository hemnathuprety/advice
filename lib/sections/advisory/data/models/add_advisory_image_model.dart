import 'package:camera/camera.dart';
import 'package:equatable/equatable.dart';

class AddAdvisoryImageModel extends Equatable {
  final String? roadClosureId;
  final List<XFile?>? files;

  const AddAdvisoryImageModel({
    this.roadClosureId,
    this.files,
  });

  @override
  List<Object?> get props => [];
}
