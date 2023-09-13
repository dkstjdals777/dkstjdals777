import 'package:fit_test/routes.dart';
import 'package:fit_test/view/bloc/login_bloc.dart';
import 'package:fit_test/view/bloc/main_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainBloc, MainState>(
      builder: (context, state) {
        return Scaffold(
          body: Stack(
            children: [
              child,
              _recordMenuWidget(),
              _historyMenuWidget(),
            ],
          ),
          bottomNavigationBar: _bottomNavigationBar(context),
        );
      },
    );
  }

  Widget _recordMenuWidget() {
    return BlocBuilder<MainBloc, MainState>(
      builder: (context, state) {
        return AnimatedPositioned(
          duration: const Duration(milliseconds: 300),
          bottom: state.isShowRecordMenu ? 0.w : -600.w,
          left: 0.w,
          child: Container(
            width: 1.sw / 3,
            height: 600.w,
            color: Colors.grey,
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: state.exerciseList.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    context.read<MainBloc>().add(const MainEvent.toggleMenu(true));
                    context.push(Pages.record, extra: state.exerciseList[index]);
                  },
                  child: Container(
                    color: Colors.grey,
                    height: 150.w,
                    child: Center(child: Text(state.exerciseList[index].name!)),
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }

  Widget _historyMenuWidget() {
    return BlocBuilder<MainBloc, MainState>(
      builder: (context, state) {
        return AnimatedPositioned(
          duration: const Duration(milliseconds: 300),
          bottom: state.isShowHistoryMenu ? 0.w : -600.w,
          left: 1.sw / 3,
          child: Container(
            width: 1.sw / 3,
            height: 600.w,
            color: Colors.grey,
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: state.exerciseList.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    context.read<MainBloc>().add(const MainEvent.toggleMenu(false));
                    context.push(Pages.history, extra: state.exerciseList[index].name);
                  },
                  child: Container(
                    color: Colors.grey,
                    height: 150.w,
                    child: Center(child: Text(state.exerciseList[index].name!)),
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }

  Widget _bottomNavigationBar(BuildContext context) {
    return Container(
      color: Colors.grey,
      height: kBottomNavigationBarHeight,
      child: Row(
        children: [
          Flexible(
            flex: 1,
            child: GestureDetector(
              behavior: HitTestBehavior.translucent,
              onTap: () {
                if (true == _isLogin(context)) {
                  context.read<MainBloc>().add(const MainEvent.toggleMenu(true));
                } else if (Routes.getCurrentLocation() != Pages.login) {
                  context.push(Pages.login);
                }
              },
              child: const Center(
                child: Text('운동 기록 하기'),
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: GestureDetector(
              behavior: HitTestBehavior.translucent,
              onTap: () {
                if (true == _isLogin(context)) {
                  context.read<MainBloc>().add(const MainEvent.toggleMenu(false));
                } else if (Routes.getCurrentLocation() != Pages.login) {
                  context.push(Pages.login);
                }
              },
              child: const Center(
                child: Text('운동 기록 보기'),
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: GestureDetector(
              behavior: HitTestBehavior.translucent,
              onTap: () {
                if (false == _isLogin(context) && Routes.getCurrentLocation() != Pages.login) {
                  context.push(Pages.login);
                }
              },
              child: const Center(
                child: Text('로그인'),
              ),
            ),
          ),
        ],
      ),
    );
  }

  _isLogin(BuildContext context) {
    return context.read<LoginBloc>().state.isLogin;
  }
}
