part of 'record_bloc.dart';

@freezed
class RecordEvent with _$RecordEvent {
  const factory RecordEvent.create(String filter) = _Create;
}
