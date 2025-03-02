import 'dart:ui';

import 'package:audio_session/audio_session.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:just_audio/just_audio.dart';
import 'package:meditation/audio_player/domain/position_data.dart';
import 'package:meditation/audio_player/presentation/widgets/play_pause_button.dart';
import 'package:meditation/audio_player/presentation/widgets/seekbar.dart';
import 'package:rxdart/rxdart.dart';

T? ambiguate<T>(T? value) => value;

class AudioPlayerScreen extends StatefulWidget {
  const AudioPlayerScreen({super.key});

  @override
  State<AudioPlayerScreen> createState() => _AudioPlayerScreenState();
}

class _AudioPlayerScreenState extends State<AudioPlayerScreen>
    with WidgetsBindingObserver {
  final _player = AudioPlayer();

  @override
  void initState() {
    super.initState();
    ambiguate(WidgetsBinding.instance)!.addObserver(this);
    _init();
  }

  Future<void> _init() async {
    final session = await AudioSession.instance;
    await session.configure(const AudioSessionConfiguration.speech());
    // _player.playbackEventStream.listen(
    //   (event) {},
    //   onError: (Object e, StackTrace stackTrace) {
    //     print('A stream error occurred: $e');
    //   },
    // );
    // try {
    await _player.setAudioSource(
      AudioSource.uri(
        Uri.parse(
          'https://s3.amazonaws.com/scifri-episodes/scifri20181123-episode.mp3',
        ),
      ),
    );
    // }
    // on PlayerException catch (e) {
    //   // print('Error loading audio source: $e');
    // }
  }

  @override
  void dispose() {
    ambiguate(WidgetsBinding.instance)!.removeObserver(this);
    _player.dispose();
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.paused) {
      _player.stop();
    }
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
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/pngs/background.png'),
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
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  'Schlafmeditation',
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                    fontWeight: FontWeight.w300,
                    letterSpacing: -1,
                  ),
                ),
                Text(
                  'mit Sarita',
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
            Positioned(
              bottom: 32,
              left: 20,
              child: IconButton(
                onPressed: () => context.pop(),
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                  size: 32,
                ),
              ),
            ),
          ],
        ),
      );
}
