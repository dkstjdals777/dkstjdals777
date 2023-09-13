import 'package:bloc/bloc.dart';
import 'package:fit_test/data/remote/data_state.dart';
import 'package:fit_test/data/repositories/api_repository.dart';
import 'package:fit_test/injector.dart';
import 'package:fit_test/model/exercise.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_event.dart';
part 'main_state.dart';
part 'main_bloc.freezed.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  MainBloc() : super(const MainState()) {
    on<MainEvent>((event, emit) async {
      if (event is _Init) {
        await _fetchData(emit);
      } else if (event is _ToggleMenu) {
        emit(state.copyWith(
          isShowRecordMenu: event.isRecord ? !state.isShowRecordMenu : false,
          isShowHistoryMenu: event.isRecord ? false : !state.isShowHistoryMenu,
        ));
      }
    });
  }

  _fetchData(Emitter<MainState> emit) async {
    var result = await injector<APIRepository>().getExercise();
    if (result is DataSuccess) {
      emit(
        state.copyWith(
          exerciseList: result.data!,
        ),
      );
    }
  }
}
