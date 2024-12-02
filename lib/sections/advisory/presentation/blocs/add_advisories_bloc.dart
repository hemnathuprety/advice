import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:camera/camera.dart';
import 'package:dartz/dartz.dart';
import 'package:advice/core/base_response_model.dart';
import 'package:advice/core/constants/view_status.dart';
import 'package:advice/core/error/failures.dart';
import 'package:advice/core/use_cases/usecase.dart';
import 'package:advice/sections/advisory/data/models/add_advisory_image_model.dart';
import 'package:advice/sections/advisory/domain/entities/districts_entity.dart';
import 'package:advice/sections/advisory/domain/entities/divisions_entity.dart';
import 'package:advice/sections/advisory/domain/entities/roads_from_division_entity.dart';
import 'package:advice/sections/advisory/domain/usecases/districts_usecase.dart';
import 'package:advice/sections/advisory/domain/usecases/divisions_usecase.dart';
import 'package:advice/sections/advisory/domain/usecases/post_advisory_usecase.dart';
import 'package:advice/sections/advisory/domain/usecases/roads_division_usecase.dart';
import 'package:advice/sections/advisory/domain/usecases/upload_advisory_images_usecase.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'add_advisories_event.dart';
part 'add_advisories_state.dart';

@injectable
class AddAdvisoriesBloc extends Bloc<AddAdvisoriesEvent, AddAdvisoriesState> {
  final DistrictsUsecase districtsUsecase;
  final DivisionsUsecase divisionsUsecase;
  final RoadsDivisionUsecase roadsDivisionUsecase;
  final PostAdvisoryUsecase postAdvisoryUsecase;
  final UploadAdvisoryImagesUsecase uploadAdvisoryImagesUsecase;

  AddAdvisoriesBloc({
    required this.districtsUsecase,
    required this.divisionsUsecase,
    required this.roadsDivisionUsecase,
    required this.postAdvisoryUsecase,
    required this.uploadAdvisoryImagesUsecase,
  }) : super(AddAdvisoriesState()) {
    on<GetDivisionsList>(_onDivisionsList);
    on<GetDistrictsList>(_onDistrictsList);
    on<GetRoadDivisionsList>(_onRoadDivisionsList);
    on<FilterRoadLinkList>(_onFilterRoadLinkList);
    on<UploadAdvisory>(_onUploadAdvisory);
    on<UploadAdvisoryImages>(_onUploadAdvisoryImages);
    on<DataResetEvent>(_onDataReset);
  }

  Future<void> _onDataReset(
      DataResetEvent event, Emitter<AddAdvisoriesState> emit) async {
    emit(state.copyWith(status: ViewStatus.initial, error: ""));
  }

  Future<void> _onDivisionsList(
      GetDivisionsList event, Emitter<AddAdvisoriesState> emit) async {
    try {
      final Either<Failure, DivisionsEntity?> response =
          await divisionsUsecase.call(NoParams());
      response.fold((l) {
        final BaseResponseFailure errorMessage = l as BaseResponseFailure;

        log('error in bloc: ${errorMessage.message}');
      }, (DivisionsEntity? data) async {
        log('Data log: ${data?.divisions?.length}');
        if (data?.divisions != null) {
          emit(state.copyWith(
              status: ViewStatus.success, divisionsEntity: data));
        }
      });
    } catch (e) {
      log('error in bloc: $e');
    }
  }

  Future<void> _onDistrictsList(
      GetDistrictsList event, Emitter<AddAdvisoriesState> emit) async {
    try {
      final Either<Failure, DistrictsEntity?> response =
          await districtsUsecase.call(NoParams());
      response.fold((l) {
        final BaseResponseFailure errorMessage = l as BaseResponseFailure;

        log('error in bloc: ${errorMessage.message}');
      }, (data) async {
        log('Data log: ${data?.districtsEntity?.length}');
        if (data != null) {
          emit(state.copyWith(
              status: ViewStatus.success, districtsEntity: data));
        }
      });
    } catch (e) {
      log('error in bloc: $e');
    }
  }

  Future<void> _onRoadDivisionsList(
      GetRoadDivisionsList event, Emitter<AddAdvisoriesState> emit) async {
    try {
      final Either<Failure, RoadsFromDivisionEntity?> response =
          await roadsDivisionUsecase.call(event.divName);
      response.fold((l) {
        final BaseResponseFailure errorMessage = l as BaseResponseFailure;
        log('error in bloc: ${errorMessage.message}');
      }, (data) async {
        log('Data log: ${data?.data?.length}');

        if (data?.data != null) {
          List<RoadsFromDivisionDataEntity>? d = removeDuplicates(data!.data!);
          emit(state.copyWith(
            status: ViewStatus.success,
            roadsDivisionEntity: data,
            roadFromDivisionEntity: d,
          ));
        }
      });
    } catch (e) {
      log('error in bloc: $e');
    }
  }

  List<RoadsFromDivisionDataEntity> removeDuplicates(
      List<RoadsFromDivisionDataEntity> items) {
    List<RoadsFromDivisionDataEntity> uniqueItems = []; // uniqueList
    var uniqueIDs = items
        .map((e) => e.roadRefno)
        .toSet(); //list if UniqueID to remove duplicates
    for (var e in uniqueIDs) {
      uniqueItems.add(items.firstWhere((i) => i.roadRefno == e));
    } // populate uniqueItems with equivalent original Batch items
    return uniqueItems; //send back the unique items list
  }

  FutureOr<void> _onFilterRoadLinkList(
      FilterRoadLinkList event, Emitter<AddAdvisoriesState> emit) {
    try {
      if (state.roadsDivisionEntity.data != null) {
        List<RoadsFromDivisionDataEntity?> linkItems = state
            .roadsDivisionEntity.data!
            .where((e) => e.roadRefno == event.refNo)
            .toList();
        emit(state.copyWith(
          status: ViewStatus.success,
          roadLinkDivisionEntity: linkItems,
        ));
      }
    } catch (e) {
      log('error in bloc: $e');
    }
  }

  FutureOr<void> _onUploadAdvisory(
      UploadAdvisory event, Emitter<AddAdvisoriesState> emit) async {
    try {
      emit(state.copyWith(
        status: ViewStatus.loading,
      ));

      final Either<Failure, BaseResponseModel?> response =
          await postAdvisoryUsecase.call(event.dataModel);

      response.fold((Failure l) {
        final BaseResponseFailure errorMessage = l as BaseResponseFailure;

        emit(state.copyWith(
          status: ViewStatus.failure,
          error: errorMessage.message,
        ));

        log('error in bloc: ${errorMessage.message}');
      }, (BaseResponseModel? data) async {
        if (data?.id != null) {
          log('data in bloc: ${data?.id ?? 0}');
          emit(state.copyWith(
            status: ViewStatus.success,
            roadClosureId: data?.id,
            uploadStage: 2,
          ));
        }
      });
    } catch (e) {
      log('error in bloc: $e');
      emit(state.copyWith(
        status: ViewStatus.failure,
        error: e.toString(),
      ));
    }
  }

  Future<void> _onUploadAdvisoryImages(
      UploadAdvisoryImages event, Emitter<AddAdvisoriesState> emit) async {
    try {
      emit(state.copyWith(
        status: ViewStatus.loading,
      ));
      final Either<Failure, BaseResponseModel?> response =
          await uploadAdvisoryImagesUsecase.call(AddAdvisoryImageModel(
              roadClosureId: "${event.id}", files: event.files));
      response.fold((Failure l) {
        final BaseResponseFailure errorMessage = l as BaseResponseFailure;

        emit(state.copyWith(
          status: ViewStatus.failure,
          error: errorMessage.message,
          uploadStage: 1,
        ));

        log('error in bloc: ${errorMessage.message}');
      }, (BaseResponseModel? data) async {
        log('error in bloc: $data');
        emit(state.copyWith(
          status: ViewStatus.success,
          uploadStage: 3,
        ));
      });
    } catch (e) {
      log('error in bloc: $e');
      emit(state.copyWith(
        status: ViewStatus.failure,
        uploadStage: 1,
        error: e.toString(),
      ));
    }
  }
}
