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
import 'package:fit_test/model/exercise.dart';
import 'package:fit_test/view/bloc/main_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';

void main() {
  group('main bloc test', () {
    late MainBloc mainBloc;

    setUpAll(() {
      setupDependencyInjection();
    });

    setUp(() {
      mainBloc = MainBloc();
    });

    blocTest(
      'fetch exercise data',
      build: () => mainBloc,
      act: (_) => mainBloc.add(const MainEvent.init()),
      wait: const Duration(seconds: 1),
      expect: () => [
        const MainState(exerciseList: [
          Exercise(id: '1', name: '런지'),
          Exercise(id: '2', name: '스쿼트'),
          Exercise(id: '3', name: '푸쉬업'),
          Exercise(id: '4', name: '레그 레이즈')
        ], isShowRecordMenu: false, isShowHistoryMenu: false),
      ],
    );

    blocTest(
      'toggle record menu test',
      build: () => mainBloc,
      act: (_) => mainBloc.add(const MainEvent.toggleMenu(true)),
      wait: const Duration(seconds: 1),
      expect: () => [
        const MainState(
            exerciseList: [], isShowRecordMenu: true, isShowHistoryMenu: false)
      ],
    );

    blocTest(
      'toggle history menu test',
      build: () => mainBloc,
      act: (_) => mainBloc.add(const MainEvent.toggleMenu(false)),
      wait: const Duration(seconds: 1),
      expect: () => [
        const MainState(
            exerciseList: [], isShowRecordMenu: false, isShowHistoryMenu: true)
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
