part of 'observation_image_bloc.dart';

@freezed
class ObservationImageState with _$ObservationImageState {
  const factory ObservationImageState.success({
    @Default(false) bool isLoading,
    @Default(false) bool hasError,
    @Default(false) bool isSuccess,
    @Default("") String errorMsg,
    @Default("") String imageUrl,
  }) = _Initial;
}
