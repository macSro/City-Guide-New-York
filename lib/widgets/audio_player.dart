import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class CustomAudioPlayer extends StatefulWidget {
  final String recording;

  const CustomAudioPlayer({Key? key, required this.recording})
      : super(key: key);

  @override
  State<CustomAudioPlayer> createState() => _CustomAudioPlayerState();
}

class _CustomAudioPlayerState extends State<CustomAudioPlayer> {
  final AudioCache _audioCache = AudioCache(prefix: 'assets/recordings/');
  AudioPlayer? _player;
  bool _isPlaying = false;

  @override
  void dispose() {
    _player?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      iconSize: 28,
      padding: EdgeInsets.zero,
      constraints: const BoxConstraints(),
      splashRadius: 22,
      onPressed: () {
        if (_isPlaying) {
          _player?.stop();
        } else {
          _audioCache.play(widget.recording).then((player) {
            setState(() {
              _isPlaying = true;
              _player = player;
              _player?.onPlayerStateChanged.listen((state) {
                if (mounted) {
                  setState(() {
                    _isPlaying = state == PlayerState.PLAYING;
                  });
                }
              });
            });
          });
        }
      },
      icon: _isPlaying
          ? const Icon(
              Icons.stop_circle_outlined,
              color: Colors.blue,
            )
          : const Icon(
              Icons.play_circle_outline,
              color: Colors.blue,
            ),
    );
  }
}
