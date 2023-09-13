import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:video_player/video_player.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late VideoPlayerController _controller;
  @override
  void initState() {
    _initController('assets/video/ad_video1.mp4');
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  _initController(String dataSource) {
    _controller = VideoPlayerController.asset(dataSource)
      ..initialize().then((value) {
        setState(() {
          _controller.play();
        });
      })
      ..addListener(
        () {
          if (_controller.value.position == _controller.value.duration) {
            if (_controller.dataSource == 'assets/video/ad_video1.mp4') {
              _controller.dispose().then(
                  (value) => _initController('assets/video/ad_video2.mp4'));
            } else {
              _controller.dispose().then(
                  (value) => _initController('assets/video/ad_video1.mp4'));
            }
          }
        },
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 1.sw,
          child: AspectRatio(
            aspectRatio: _controller.value.aspectRatio,
            child: VideoPlayer(_controller),
          ),
        ),
      ),
    );
  }
}
