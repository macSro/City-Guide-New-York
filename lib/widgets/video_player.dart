import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart' as vid;

class VideoPlayer extends StatefulWidget {
  final String video;

  const VideoPlayer({Key? key, required this.video}) : super(key: key);

  @override
  _VideoPlayerState createState() => _VideoPlayerState();
}

class _VideoPlayerState extends State<VideoPlayer> {
  vid.VideoPlayerController? _controller;

  @override
  void initState() {
    super.initState();
    _controller =
        vid.VideoPlayerController.asset('assets/videos/${widget.video}')
          ..addListener(() {
            if (mounted) {
              setState(() {});
            }
          })
          ..initialize().then((value) => _controller!.setVolume(0));
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _controller != null && _controller!.value.isInitialized
        ? _video()
        : const SizedBox(
            height: 200,
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
  }

  Widget _video() {
    return Stack(
      children: <Widget>[
        AspectRatio(
          aspectRatio: _controller!.value.aspectRatio,
          child: vid.VideoPlayer(_controller!),
        ),
        Positioned.fill(
          child: _Overlay(controller: _controller!),
        ),
      ],
    );
  }
}

class _Overlay extends StatelessWidget {
  final vid.VideoPlayerController controller;

  const _Overlay({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () =>
          controller.value.isPlaying ? controller.pause() : controller.play(),
      child: Stack(
        children: <Widget>[
          controller.value.isPlaying
              ? Container()
              : Container(
                  alignment: Alignment.center,
                  color: Colors.black26,
                  child: const Icon(Icons.play_arrow,
                      color: Colors.white, size: 80),
                ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: vid.VideoProgressIndicator(
              controller,
              allowScrubbing: true,
            ),
          ),
        ],
      ),
    );
  }
}
