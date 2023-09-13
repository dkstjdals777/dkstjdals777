part of 'record_bloc.dart';

@freezed
class RecordState with _$RecordState {
  const factory RecordState({
    @Default('기록중..') String result,
    @Default(false) bool isLoading,
  }) = _RecordState;
}
