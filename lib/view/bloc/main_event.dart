part of 'main_bloc.dart';

@freezed
class MainEvent with _$MainEvent {
  const factory MainEvent.init() = _Init;
  const factory MainEvent.toggleMenu(bool isRecord) = _ToggleMenu;
}
