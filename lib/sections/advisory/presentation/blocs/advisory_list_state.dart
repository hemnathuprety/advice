part of 'advisory_list_bloc.dart';

@freezed
class AdvisoryListState with _$AdvisoryListState {
  const factory AdvisoryListState.loaded({
    @Default([]) List<AdvisoryModel> advisoryList,
    @Default(false) bool isLoading,
    @Default(false) bool hasError,
  }) = _Loaded;
}
