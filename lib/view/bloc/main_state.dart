part of 'main_bloc.dart';

@freezed
class MainState with _$MainState {
  const factory MainState({
    @Default([]) List<Exercise> exerciseList,
    @Default(false) bool isShowRecordMenu,
    @Default(false) bool isShowHistoryMenu,
  }) = _MainState;
}
