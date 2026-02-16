import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class MainVideoBackground extends StatefulWidget {
  const MainVideoBackground({super.key});

  @override
  State<MainVideoBackground> createState() => _MainVideoBackgroundState();
}

class _MainVideoBackgroundState extends State<MainVideoBackground>
    with AutomaticKeepAliveClientMixin {
  late VideoPlayerController _controller;

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('assets/video/butterfly.mp4')
      ..setLooping(true)
      ..initialize().then((_) {
        _controller.play();
        if (mounted) setState(() {});
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    if (!_controller.value.isInitialized) return Container(color: Colors.black);
    return Positioned.fill(
      child: FittedBox(
        fit: BoxFit.cover,
        child: SizedBox(
          width: _controller.value.size.width,
          height: _controller.value.size.height,
          child: VideoPlayer(_controller),
        ),
      ),
    );
  }
}
