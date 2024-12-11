import 'package:advice/sections/observations/models/image_upload_response.dart';
import 'package:advice/sections/observations/repo/observation_repo.dart';
import 'package:bloc/bloc.dart';
import 'package:camera/camera.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'observation_image_bloc.freezed.dart';
part 'observation_image_event.dart';
part 'observation_image_state.dart';

@injectable
class ObservationImageBloc
    extends Bloc<ObservationImageEvent, ObservationImageState> {
  final ObservationRepo observationRepo;

  ObservationImageBloc({required this.observationRepo})
      : super(const ObservationImageState.success()) {
    on<ObservationImageEvent>((event, emit) async {
      await event.when(uploaded: (XFile imageFile) async {
        emit(state.copyWith(isLoading: true));
        ImageUploadResponse? imageModel =
            await observationRepo.uploadObservationImage(imageFile);
        if (imageModel != null) {
          emit(
            state.copyWith(
                imageUrl: imageModel.fileName ?? "",
                isSuccess: true,
                isLoading: false),
          );
        } else {
          emit(
            state.copyWith(
                hasError: true,
                isLoading: false,
                errorMsg: imageModel?.message ?? ""),
          );
        }
      });
    });
  }
}
