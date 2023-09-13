// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:bloc_test/bloc_test.dart';
import 'package:dio/dio.dart';
import 'package:fit_test/data/remote/api_service.dart';
import 'package:fit_test/data/repositories/api_repository.dart';
import 'package:fit_test/injector.dart';
import 'package:fit_test/model/history.dart';
import 'package:fit_test/view/history/bloc/history_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';

void main() {
  group('history bloc test', () {
    late HistoryBloc historyBloc;

    setUpAll(() {
      setupDependencyInjection();
    });

    setUp(() {
      historyBloc = HistoryBloc();
    });

    blocTest(
      'fetch empty page',
      build: () => historyBloc,
      act: (_) => historyBloc.add(const HistoryEvent.fetch(1000, 1, null)),
      wait: const Duration(seconds: 1),
      expect: () => [
        const HistoryState(
            list: [], currentPageIndex: 1, hasNextPage: true, isLoading: true),
        const HistoryState(
            list: [],
            currentPageIndex: 1000,
            hasNextPage: false,
            isLoading: false)
      ],
    );

    blocTest(
      'fetch first page',
      build: () => historyBloc,
      act: (_) => historyBloc.add(const HistoryEvent.fetch(1, 1, null)),
      wait: const Duration(seconds: 1),
      expect: () => [
        const HistoryState(
            list: [], currentPageIndex: 1, hasNextPage: true, isLoading: true),
        const HistoryState(list: [
          History(
              id: '1',
              createdAt: 1694497837,
              name: 'name 1',
              message: 'message 1')
        ], currentPageIndex: 1, hasNextPage: false, isLoading: false)
      ],
    );
  });
}

final getIt = GetIt.instance;

void setupDependencyInjection() {
  final dio = Dio(BaseOptions(
    connectTimeout: const Duration(seconds: 15),
    receiveTimeout: const Duration(seconds: 30),
    headers: {'Content-Type': 'application/json'},
  ));
  injector.registerSingleton<Dio>(dio);
  injector.registerSingleton<APIService>(APIService(injector(),
      baseUrl: 'https://64ffc5bd18c34dee0cd3f0b4.mockapi.io'));
  injector.registerSingleton<APIRepository>(APIRepository(injector()));
}
