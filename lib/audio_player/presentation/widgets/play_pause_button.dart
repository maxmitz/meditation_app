import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class PlayPauseButton extends StatelessWidget {
  const PlayPauseButton(this.player, {super.key});
  final AudioPlayer player;

  @override
  Widget build(BuildContext context) => StreamBuilder<PlayerState>(
        stream: player.playerStateStream,
        builder: (context, snapshot) {
          final playerState = snapshot.data;
          final processingState = playerState?.processingState;
          final playing = playerState?.playing;
          if (processingState == ProcessingState.loading ||
              processingState == ProcessingState.buffering) {
            return Container(
              margin: const EdgeInsets.all(8),
              width: 64,
              height: 64,
              child: const CircularProgressIndicator(),
            );
          } else if (playing != true) {
            return IconButton(
              icon: const Icon(Icons.play_arrow),
              color: Colors.white,
              iconSize: 64,
              onPressed: player.play,
            );
          } else if (processingState != ProcessingState.completed) {
            return IconButton(
              icon: const Icon(Icons.pause),
              color: Colors.white,
              iconSize: 64,
              onPressed: player.pause,
            );
          } else {
            return IconButton(
              icon: const Icon(Icons.replay),
              color: Colors.white,
              iconSize: 64,
              onPressed: () => player.seek(Duration.zero),
            );
          }
        },
      );
}
