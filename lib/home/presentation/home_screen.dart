import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:meditation/audio_player/domain/audio.dart';
import 'package:meditation/home/presentation/widgets/home_card.dart';
import 'package:meditation/shared/routing/route_names.dart';

final testMeditations = [
  'https://d1cy5zxxhbcbkk.cloudfront.net/guided-meditations/01_Breathing_Meditation.mp3',
  'https://achtsamkeit.swiss/wp-content/uploads/2020/06/2018-01-01_Bodyscan.mp3',
  'https://d1cy5zxxhbcbkk.cloudfront.net/guided-meditations/05_Loving_Kindness_Meditation.mp3',
  'https://d1cy5zxxhbcbkk.cloudfront.net/guided-meditations/Body-Scan-for-Sleep.mp3',
  'https://www.cc.nih.gov/sites/default/files/assets/patientlibrary/audio/HJPanicAttack2CountingBreaths.mp3',
  'https://www.cc.nih.gov/sites/default/files/assets/patientlibrary/audio/HJPanicAttack3Mantra.mp3',
];

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                HomeCard(
                  onTap: () => context.go(RoutePaths.breathingGame),
                  svgPath: 'assets/svgs/wind.svg',
                  title: 'BREATHING GAME',
                ),
                for (final meditationUrl in testMeditations)
                  HomeCard(
                    onTap: () => context.go(
                      RoutePaths.audioPlayer,
                      extra: Audio(
                        url: meditationUrl,
                        title: 'Schlafmeditation',
                        artist: 'mit Sarita',
                        imageUrl: 'assets/pngs/background.png',
                      ),
                    ),
                    svgPath: 'assets/svgs/meditation.svg',
                    title: meditationUrl,
                  ),
              ],
            ),
          ),
        ),
      );
}
