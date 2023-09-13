import 'package:cached_network_image/cached_network_image.dart';
import 'package:fit_test/model/exercise.dart';
import 'package:fit_test/view/common_widget.dart';
import 'package:fit_test/view/record/bloc/record_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RecordPage extends StatelessWidget {
  const RecordPage({super.key, required this.exercise});

  final Exercise exercise;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          RecordBloc()..add(RecordEvent.create(exercise.name!)),
      child: BlocBuilder<RecordBloc, RecordState>(
        builder: (context, state) {
          return Scaffold(
            appBar: CommonWidget.commonAppBar(context),
            body: Stack(
              children: [
                Column(
                  children: [
                    CachedNetworkImage(
                      imageUrl: exercise.imgUrl!,
                      placeholder: (context, url) =>
                          const Center(child: CircularProgressIndicator()),
                      width: 1.sw,
                      fit: BoxFit.cover,
                    ),
                    Center(child: Text('결과 : ${state.result}')),
                  ],
                ),
                if (state.isLoading == true)
                  const Center(
                    child: CircularProgressIndicator(),
                  ),
              ],
            ),
          );
        },
      ),
    );
  }
}
