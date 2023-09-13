import 'package:fit_test/view/common_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'bloc/history_bloc.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key, required this.filter});

  final String filter;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          HistoryBloc()..add(HistoryEvent.fetch(1, 10, filter)),
      child: _HistoryPage(filter: filter),
    );
  }
}

class _HistoryPage extends StatelessWidget {
  const _HistoryPage({required this.filter});

  final String filter;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HistoryBloc, HistoryState>(
      buildWhen: (p, c) => p.list != c.list || p.isLoading != c.isLoading,
      builder: (context, state) {
        return Scaffold(
          appBar: CommonWidget.commonAppBar(context),
          body: Stack(
            children: [
              NotificationListener(
                onNotification: (notification) {
                  if (notification is ScrollEndNotification) {
                    if (false == state.isLoading && true == state.hasNextPage) {
                      print('load more');
                      int nextPageIndex = state.currentPageIndex;
                      context
                          .read<HistoryBloc>()
                          .add(HistoryEvent.fetch(++nextPageIndex, 10, filter));
                    }
                  }
                  return false;
                },
                child: ListView.builder(
                  itemCount: state.list.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.all(20.w),
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      color: Colors.white,
                      width: 1.sw,
                      height: 200.w,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                              '운동 일시 : ${DateTime.fromMillisecondsSinceEpoch(state.list[index].createdAt! * 1000)}'),
                          Text('운동명 : ${state.list[index].name!}'),
                          Text('메모 : ${state.list[index].message!}'),
                        ],
                      ),
                    );
                  },
                ),
              ),
              if (state.isLoading == true)
                const Center(
                  child: CircularProgressIndicator(),
                ),
            ],
          ),
        );
      },
    );
  }
}
