import 'package:bloc/bloc.dart';
import 'package:fit_test/data/remote/data_state.dart';
import 'package:fit_test/data/repositories/api_repository.dart';
import 'package:fit_test/injector.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'record_event.dart';
part 'record_state.dart';
part 'record_bloc.freezed.dart';

class RecordBloc extends Bloc<RecordEvent, RecordState> {
  RecordBloc() : super(const RecordState()) {
    on<RecordEvent>((event, emit) async {
      if (event is _Create) {
        emit(state.copyWith(isLoading: true));
        await _createData(emit, event.filter);
      }
    });
  }

  _createData(Emitter<RecordState> emit, String filter) async {
    var result = await injector<APIRepository>().addHistory({
      "name": filter,
      "message": '$filter 운동',
    });

    String resultMsg = '기록중..';
    if (result is DataSuccess) {
      resultMsg = '$filter 운동 기록 성공';
    } else {
      resultMsg = '$filter 운동 기록 실패';
    }
    emit(state.copyWith(
      result: resultMsg,
      isLoading: false,
    ));
  }
}
