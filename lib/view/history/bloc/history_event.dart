part of 'history_bloc.dart';

@freezed
class HistoryEvent with _$HistoryEvent {
  const factory HistoryEvent.fetch(int page, int limit, String? filter) =
      _Fetch;
}
