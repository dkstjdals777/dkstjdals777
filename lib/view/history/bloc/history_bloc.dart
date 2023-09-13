import 'package:bloc/bloc.dart';
import 'package:fit_test/data/remote/data_state.dart';
import 'package:fit_test/data/repositories/api_repository.dart';
import 'package:fit_test/injector.dart';
import 'package:fit_test/model/history.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'history_event.dart';
part 'history_state.dart';
part 'history_bloc.freezed.dart';

class HistoryBloc extends Bloc<HistoryEvent, HistoryState> {
  HistoryBloc() : super(const HistoryState()) {
    on<HistoryEvent>((event, emit) async {
      if (event is _Fetch) {
        emit(state.copyWith(isLoading: true));
        await _fetchData(emit, event.page, event.limit, event.filter);
      }
    });
  }

  _fetchData(
      Emitter<HistoryState> emit, int page, int limit, String? filter) async {
    var result = await injector<APIRepository>()
        .getHistory(page, limit: limit, filter: filter);
    if (result is DataSuccess) {
      List<History> temp = List.from(state.list);
      temp.addAll(result.data!);
      emit(
        state.copyWith(
          currentPageIndex: page,
          isLoading: false,
          list: temp,
          hasNextPage: result.data!.length == 10,
        ),
      );
    } else {
      emit(state.copyWith(isLoading: false));
    }
  }
}
