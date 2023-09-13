// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:bloc_test/bloc_test.dart';
import 'package:fit_test/view/bloc/login_bloc.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('login bloc test', () {
    late LoginBloc loginBloc;

    setUp(() {
      loginBloc = LoginBloc();
    });

    blocTest(
      'emits 123',
      build: () => loginBloc,
      act: (_) => loginBloc.add(const LoginEvent.login('123')),
      expect: () => [],
    );

    blocTest(
      'emits 1234',
      build: () => loginBloc,
      act: (_) => loginBloc.add(const LoginEvent.login('1234')),
      expect: () => [],
    );

    blocTest(
      'emits 12345',
      build: () => loginBloc,
      act: (_) => loginBloc.add(const LoginEvent.login('12345')),
      expect: () => [const LoginState(isLogin: true)],
    );
  });
}
