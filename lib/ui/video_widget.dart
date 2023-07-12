import 'package:appinio_video_player/appinio_video_player.dart';
import 'package:flutter/material.dart';

class VideoWidget extends StatefulWidget {
  final Uri uri;

  const VideoWidget({Key? key, required this.uri}) : super(key: key);

  @override
  State<StatefulWidget> createState() => VideoWidgetState();
}

class VideoWidgetState extends State<VideoWidget> {
  late VideoPlayerController _controller;
  late CustomVideoPlayerController _customVideoPlayerController;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.networkUrl(widget.uri);

    _controller.initialize().then((_) => setState(() {}));
    _customVideoPlayerController = CustomVideoPlayerController(
      context: context,
      videoPlayerController: _controller,
    );
  }

  @override
  void dispose() {
    _customVideoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomVideoPlayer(
        customVideoPlayerController: _customVideoPlayerController);
  }
}
