part of 'history_bloc.dart';

@freezed
class HistoryState with _$HistoryState {
  const factory HistoryState({
    @Default([]) List<History> list,
    @Default(1) int currentPageIndex,
    @Default(true) bool hasNextPage,
    @Default(false) bool isLoading,
  }) = _HistoryState;
}
