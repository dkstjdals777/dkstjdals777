import 'package:fit_test/model/exercise.dart';
import 'package:fit_test/view/home_page.dart';
import 'package:fit_test/view/login_page.dart';
import 'package:fit_test/view/main_screen.dart';
import 'package:fit_test/view/history/history_page.dart';
import 'package:fit_test/view/record/record_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'view/bloc/login_bloc.dart';

class Pages {
  static const main = '/';
  static const record = '/record';
  static const history = '/history';
  static const login = '/login';
}

class Routes {
  static final router = GoRouter(
    routes: [
      ShellRoute(
        builder: (context, state, child) => MainScreen(child: child),
        routes: [
          GoRoute(
            path: Pages.main,
            pageBuilder: defaultPageBuilder(const HomePage()),
          ),
          GoRoute(
            path: Pages.record,
            pageBuilder: (context, state) {
              return buildPageWithDefaultTransition(
                context: context,
                state: state,
                child: RecordPage(exercise: state.extra as Exercise),
              );
            },
          ),
          GoRoute(
            path: Pages.history,
            pageBuilder: (context, state) {
              return buildPageWithDefaultTransition(
                context: context,
                state: state,
                child: HistoryPage(filter: state.extra as String),
              );
            },
          ),
          GoRoute(
            path: Pages.login,
            pageBuilder: defaultPageBuilder(const LoginPage()),
          ),
        ],
      ),
    ],
    redirect: (context, state) {
      if (state.fullPath != Pages.main &&
          false == context.read<LoginBloc>().state.isLogin) {
        return Pages.login;
      }
      return null;
    },
  );

  static String getCurrentLocation() {
    final RouteMatch lastMatch =
        router.routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : router.routerDelegate.currentConfiguration;
    final String location = matchList.uri.toString();
    return location;
  }
}

CustomTransitionPage buildPageWithDefaultTransition<T>({
  required BuildContext context,
  required GoRouterState state,
  required Widget child,
}) {
  return CustomTransitionPage<T>(
    key: state.pageKey,
    child: child,
    transitionDuration: const Duration(milliseconds: 200),
    reverseTransitionDuration: const Duration(milliseconds: 200),
    transitionsBuilder: (context, animation, secondaryAnimation, child) =>
        SlideTransition(
            position: animation.drive(
              Tween<Offset>(
                begin: const Offset(1, 0),
                end: Offset.zero,
              ).chain(CurveTween(curve: Curves.easeIn)),
            ),
            child: child),
  );
}

Page<dynamic> Function(BuildContext, GoRouterState) defaultPageBuilder<T>(
        Widget child,
        {bool opaque = true}) =>
    (BuildContext context, GoRouterState state) {
      return buildPageWithDefaultTransition<T>(
        context: context,
        state: state,
        child: child,
      );
    };
