import 'package:dartz/dartz.dart';
import 'package:advice/core/base_response_model.dart';
import 'package:advice/core/error/failures.dart';
import 'package:advice/core/use_cases/usecase.dart';
import 'package:advice/sections/advisory/data/models/add_advisory_image_model.dart';
import 'package:advice/sections/advisory/domain/entities/districts_entity.dart';
import 'package:advice/sections/advisory/domain/entities/divisions_entity.dart';
import 'package:advice/sections/advisory/domain/entities/roads_from_division_entity.dart';

abstract class AdvisoryRepo {
  Future<Either<Failure, DistrictsEntity?>> getAllDistricts(NoParams params);

  Future<Either<Failure, DivisionsEntity?>> getDivisions(NoParams params);

  Future<Either<Failure, RoadsFromDivisionEntity?>> getRoadsFromDivision(
      String params);

  Future<Either<Failure, BaseResponseModel?>> postAdvisory(dynamic params);

  Future<Either<Failure, BaseResponseModel?>> postAdvisoryImages(
      AddAdvisoryImageModel params);
}
