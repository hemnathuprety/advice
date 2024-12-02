import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:advice/core/base_response_model.dart';
import 'package:advice/core/error/exceptions.dart';
import 'package:advice/core/error/failures.dart';
import 'package:advice/core/use_cases/usecase.dart';
import 'package:advice/sections/advisory/data/datasources/advisory_data_source.dart';
import 'package:advice/sections/advisory/data/models/add_advisory_image_model.dart';
import 'package:advice/sections/advisory/data/models/districts_model.dart';
import 'package:advice/sections/advisory/data/models/roads_from_division_model.dart';
import 'package:advice/sections/advisory/domain/entities/divisions_entity.dart';
import 'package:advice/sections/advisory/domain/repositories/advisory_repo.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: AdvisoryRepo)
class AdvisoryRepoImpl extends AdvisoryRepo {
  final AdvisoryDataSource advisoryDataSource;

  AdvisoryRepoImpl({
    required this.advisoryDataSource,
  });

  @override
  Future<Either<Failure, DistrictsModel?>> getAllDistricts(
      NoParams params) async {
    try {
      final result = await advisoryDataSource.getAllDistricts(params);

      return right(result);
    } on ServerException catch (e) {
      return Left(BaseResponseFailure(
        message: e.errorMessage.toString(),
      ));
    } catch (e) {
      log("message $e");
      return Left(BaseResponseFailure(message: 'Something went wrong'));
    }
  }

  @override
  Future<Either<Failure, DivisionsEntity?>> getDivisions(
      NoParams params) async {
    try {
      final result = await advisoryDataSource.getDivisions(params);

      return right(result);
    } on ServerException catch (e) {
      return Left(BaseResponseFailure(
        message: e.errorMessage.toString(),
      ));
    } catch (e) {
      log("message $e");
      return Left(BaseResponseFailure(message: 'Something went wrong'));
    }
  }

  @override
  Future<Either<Failure, RoadsFromDivisionModel?>> getRoadsFromDivision(
      String params) async {
    try {
      final result = await advisoryDataSource.getRoadsFromDivision(params);

      return right(result);
    } on ServerException catch (e) {
      return Left(BaseResponseFailure(
        message: e.errorMessage.toString(),
      ));
    } catch (e) {
      log("message $e");
      return Left(BaseResponseFailure(message: 'Something went wrong'));
    }
  }

  @override
  Future<Either<Failure, BaseResponseModel?>> postAdvisory(
      dynamic params) async {
    try {
      final result = await advisoryDataSource.postAdvisory(params);

      return right(result);
    } on ServerException catch (e) {
      return Left(BaseResponseFailure(
        message: e.errorMessage.toString(),
      ));
    } catch (e) {
      log("message $e");
      return Left(BaseResponseFailure(message: 'Something went wrong'));
    }
  }

  @override
  Future<Either<Failure, BaseResponseModel?>> postAdvisoryImages(
      AddAdvisoryImageModel params) async {
    try {
      final result = await advisoryDataSource.postAdvisoryImages(params);

      return right(result);
    } on ServerException catch (e) {
      return Left(BaseResponseFailure(
        message: e.errorMessage.toString(),
      ));
    } catch (e) {
      log("message $e");
      return Left(BaseResponseFailure(message: 'Something went wrong'));
    }
  }
}
