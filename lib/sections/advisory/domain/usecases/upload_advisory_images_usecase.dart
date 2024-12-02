import 'package:dartz/dartz.dart';
import 'package:advice/core/base_response_model.dart';
import 'package:advice/core/error/failures.dart';
import 'package:advice/core/use_cases/usecase.dart';
import 'package:advice/sections/advisory/data/models/add_advisory_image_model.dart';
import 'package:advice/sections/advisory/domain/repositories/advisory_repo.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class UploadAdvisoryImagesUsecase
    implements UseCase<BaseResponseModel?, AddAdvisoryImageModel> {
  final AdvisoryRepo roadCloserRepo;

  UploadAdvisoryImagesUsecase({
    required this.roadCloserRepo,
  });

  @override
  Future<Either<Failure, BaseResponseModel?>> call(
          AddAdvisoryImageModel param) async =>
      await roadCloserRepo.postAdvisoryImages(param);
}
