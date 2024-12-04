part of 'crops_bloc.dart';

@freezed
class CropsState with _$CropsState {
  const factory CropsState.loaded({
    @Default([]) List<CropsModel> crops,
    CropDetail? cropsDetail,
    @Default(false) bool isLoading,
    @Default(false) bool hasError,
  }) = _Loaded;
}
