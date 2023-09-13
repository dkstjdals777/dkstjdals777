import 'dart:async';

import 'package:fit_test/data/remote/data_state.dart';
import 'package:fit_test/model/exercise.dart';
import 'package:fit_test/model/history.dart';

import '../remote/api_service.dart';
import '../remote/remote_api_caller.dart';

class APIRepository {
  final APIService _apiService;
  final _remoteAPI = RemoteApiCaller();

  APIRepository(this._apiService);

  Future<DataState<List<Exercise>>> getExercise() async {
    final completer = Completer<DataState<List<Exercise>>>();

    _remoteAPI<List<Exercise>>(_apiService.getExercise(), 'get exercise')
        .then((value) => completer.complete(value));

    final result = await completer.future;
    return result;
  }

  Future<DataState<List<History>>> getHistory(int page,
      {int limit = 10, String? filter}) async {
    final completer = Completer<DataState<List<History>>>();

    _remoteAPI<List<History>>(
            _apiService.getHistory(page: page, limit: limit, name: filter),
            'get history')
        .then((value) => completer.complete(value));

    final result = await completer.future;
    return result;
  }

  Future<DataState<dynamic>> addHistory(Map<String, dynamic> body) async {
    final completer = Completer<DataState<dynamic>>();

    _remoteAPI<dynamic>(_apiService.addHistory(body: body), 'add history')
        .then((value) => completer.complete(value));

    final result = await completer.future;
    return result;
  }
}
