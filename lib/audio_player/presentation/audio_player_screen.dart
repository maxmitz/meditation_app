import 'dart:ui';

import 'package:audio_session/audio_session.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:just_audio_background/just_audio_background.dart';
import 'package:meditation/audio_player/data/utils.dart';
import 'package:meditation/shared/domain/meditation.dart';
import 'package:meditation/audio_player/domain/position_data.dart';
import 'package:meditation/audio_player/presentation/widgets/play_pause_button.dart';
import 'package:meditation/audio_player/presentation/widgets/seekbar.dart';
import 'package:meditation/shared/presentation/custom_back_button.dart';
import 'package:rxdart/rxdart.dart';

class AudioPlayerScreen extends StatefulWidget {
  const AudioPlayerScreen({required this.meditation, super.key});

  final Meditation meditation;

  @override
  State<AudioPlayerScreen> createState() => _AudioPlayerScreenState();
}

class _AudioPlayerScreenState extends State<AudioPlayerScreen>
    with WidgetsBindingObserver {
  final _player = AudioPlayer();

  @override
  void initState() {
    super.initState();
    _init();
  }

  Future<void> _init() async {
    final session = await AudioSession.instance;
    await session.configure(const AudioSessionConfiguration.speech());
    _player.playbackEventStream.listen(
      (event) {},
      onError: (Object e, StackTrace stackTrace) {
        print('A stream error occurred: $e');
      },
    );
    try {
      await _player.setAudioSource(
        AudioSource.uri(
          Uri.parse(
            widget.meditation.url,
          ),
          tag: MediaItem(
            id: widget.meditation.title,
            title: widget.meditation.title,
            artist: widget.meditation.artist,
            duration: widget.meditation.duration,
            artUri: await getImageFileFromAssets(widget.meditation.imagePath),
          ),
        ),
      );
    } on PlayerException catch (e) {
      print('Error loading audio source: $e');
    }
  }

  @override
  void dispose() {
    _player.dispose();
    super.dispose();
  }

  Stream<PositionData> get _positionDataStream =>
      Rx.combineLatest3<Duration, Duration, Duration?, PositionData>(
        _player.positionStream,
        _player.bufferedPositionStream,
        _player.durationStream,
        (position, bufferedPosition, duration) => PositionData(
          position,
          bufferedPosition,
          duration ?? Duration.zero,
        ),
      );

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Stack(
          alignment: Alignment.center,
          children: [
            Hero(
              tag: widget.meditation.imagePath + widget.meditation.title,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(widget.meditation.imagePath),
                    fit: BoxFit.cover,
                    opacity: 0.8,
                  ),
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 7, sigmaY: 7),
                  child: Container(
                    color: Colors.black.withOpacity(0.5),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    widget.meditation.title,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                      letterSpacing: -1,
                      wordSpacing: -2,
                      height: 1.1,
                    ),
                  ),
                  Text(
                    widget.meditation.artist,
                    style: TextStyle(
                      fontSize: 32,
                      color: Colors.grey[300],
                      fontWeight: FontWeight.w100,
                      letterSpacing: -1,
                    ),
                  ),
                  StreamBuilder<PositionData>(
                    stream: _positionDataStream,
                    builder: (context, snapshot) {
                      final positionData = snapshot.data;
                      return SeekBar(
                        duration: positionData?.duration ?? Duration.zero,
                        position: positionData?.position ?? Duration.zero,
                        bufferedPosition:
                            positionData?.bufferedPosition ?? Duration.zero,
                        onChangeEnd: _player.seek,
                      );
                    },
                  ),
                  PlayPauseButton(_player),
                ],
              ),
            ),
            const Positioned(
              bottom: 0,
              left: 0,
              child: CustomBackButton(),
            ),
          ],
        ),
      );
}
