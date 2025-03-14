import 'package:meditation/meditation_overview/view_model/meditation_overview_data.dart';
import 'package:meditation/shared/domain/meditation.dart';
import 'package:meditation/shared/presentation/asset_paths.dart';

const categories = [
  MeditationOverviewData(
    title: 'Schlaf',
    meditations: [
      Meditation(
        url: AssetPaths.meditation1Audio,
        title: 'Body Scan for Sleep (6 min)',
        artist: 'UCLA',
        imagePath: AssetPaths.backgroundNightSky,
      ),
      Meditation(
        url:
            'https://mbsr-koeln.de/wp-content/uploads/2024/11/MBSR-Body-Scan-15-Min-mit-Schlussaktivierung-mono-145-.mp3',
        title: 'MBSR Köln (15 min)',
        artist: 'UCLA',
        imagePath: AssetPaths.backgroundNightSky,
      ),
    ],
    imagePath: AssetPaths.backgroundNightSky,
  ),
  MeditationOverviewData(
    title: 'Fokus',
    meditations: [
      Meditation(
        url:
            'https://d1cy5zxxhbcbkk.cloudfront.net/guided-meditations/03_Complete_Meditation_Instructions.mp3',
        title: 'Complete Meditation Instructions (19 min)',
        artist: 'UCLA',
        imagePath: AssetPaths.backgroundRiver,
      ),
      Meditation(
        url:
            'https://d1cy5zxxhbcbkk.cloudfront.net/guided-meditations/02_Breath_Sound_Body_Meditation.mp3',
        title: 'Breath, Sound, Body Meditation (12 min)',
        artist: 'UCLA',
        imagePath: AssetPaths.backgroundRiver,
      ),
      Meditation(
        url:
            'https://d1cy5zxxhbcbkk.cloudfront.net/guided-meditations/Body-Scan-Meditation.mp3',
        title: 'Short Body Scan (3 min)',
        artist: 'UCLA',
        imagePath: AssetPaths.backgroundRiver,
      ),
      Meditation(
        url:
            'https://mbsr-koeln.de/wp-content/uploads/2024/11/24-Atemmeditation-8-Min-145-mono.mp3',
        title: 'Atem-Meditation (8 min)',
        artist: 'MBSR Köln',
        imagePath: AssetPaths.backgroundRiver,
      ),
      Meditation(
        url: 'https://www.mbsr-kurs-koeln.de/downloads/AtemMeditation.mp3',
        title: 'Atem-Meditation (13 min)',
        artist: 'MBSR Köln',
        imagePath: AssetPaths.backgroundRiver,
      ),
      Meditation(
        url:
            'https://mbsr-koeln.de/wp-content/uploads/2024/11/24-Atemmeditation-15-Min-145-mono.mp3',
        title: 'Atem-Meditation (15 min)',
        artist: 'MBSR Köln',
        imagePath: AssetPaths.backgroundRiver,
      ),
      Meditation(
        url:
            'https://yabonn.de/wp-content/uploads/2020/04/MeditationAufKoerperempfindungen.mp3',
        title: 'Meditation auf Körper (20 min)',
        artist: 'Yoga und Achtsamkeit in Bonn',
        imagePath: AssetPaths.backgroundRiver,
      ),
      Meditation(
        url:
            'https://yabonn.de/wp-content/uploads/2020/04/MeditationAufGefuehle.mp3',
        title: 'Meditation auf Gefühle (21 min)',
        artist: 'Yoga und Achtsamkeit in Bonn',
        imagePath: AssetPaths.backgroundRiver,
      ),
      Meditation(
        url:
            'https://yabonn.de/wp-content/uploads/2020/04/MeditationAufGefuehle.mp3',
        title: 'Meditation auf Gefühle (21 min)',
        artist: 'Yoga und Achtsamkeit in Bonn',
        imagePath: AssetPaths.backgroundRiver,
      ),
      Meditation(
        url:
            'https://yabonn.de/wp-content/uploads/2020/04/MeditationAufGefuehle.mp3',
        title: 'Meditation auf Gefühle (21 min)',
        artist: 'Yoga und Achtsamkeit in Bonn',
        imagePath: AssetPaths.backgroundRiver,
      ),
      Meditation(
        url:
            'https://yabonn.de/wp-content/uploads/2020/04/MeditationAufGedanken.mp3',
        title: 'Meditation auf Gedanken (22 min)',
        artist: 'Yoga und Achtsamkeit in Bonn',
        imagePath: AssetPaths.backgroundRiver,
      ),
      Meditation(
        url: 'https://yabonn.de/wp-content/uploads/2020/04/AtemMeditationI.mp3',
        title: 'Atem-Meditation I (15 min)',
        artist: 'Yoga und Achtsamkeit in Bonn',
        imagePath: AssetPaths.backgroundRiver,
      ),
    ],
    imagePath: AssetPaths.backgroundMountain,
  ),
  MeditationOverviewData(
    title: 'Entspannung',
    meditations: [],
    imagePath: AssetPaths.backgroundFlowers,
  ),
  MeditationOverviewData(
    title: 'Positivität',
    meditations: [
      Meditation(
        url:
            'https://d1cy5zxxhbcbkk.cloudfront.net/guided-meditations/05_Loving_Kindness_Meditation.mp3',
        title: 'Loving Kindness Meditation (9 min)',
        artist: 'UCLA',
        imagePath: AssetPaths.backgroundRiver,
      ),
      Meditation(
        url:
            'https://mbsr-koeln.de/wp-content/uploads/2024/11/MBSR-Leuchtturmuebung-2-Anleitung-145-mono.mp3',
        title: 'Leuchtturm-Übung Anleitung (9 min)',
        artist: 'MBSR Köln',
        imagePath: AssetPaths.backgroundRiver,
      ),
      Meditation(
        url: 'https://www.mbsr-kurs-koeln.de/downloads/Metta.mp3',
        title: 'Metta/ Mantra Meditation (13 min)',
        artist: 'MBSR Köln',
        imagePath: AssetPaths.backgroundRiver,
      ),
      Meditation(
        url:
            'https://yabonn.de/wp-content/uploads/2020/04/MitgefuehlFuerSichSelbst.mp3',
        title: 'Mitgefühl mit sich Selbst (15 min)',
        artist: 'Yoga und Achtsamkeit in Bonn',
        imagePath: AssetPaths.backgroundRiver,
      ),
      Meditation(
        url:
            'https://yabonn.de/wp-content/uploads/2020/04/MeditationZuDankbarkeit.mp3',
        title: 'Dankbarkeit (18 min)',
        artist: 'Yoga und Achtsamkeit in Bonn',
        imagePath: AssetPaths.backgroundRiver,
      ),
      Meditation(
        url:
            'https://yabonn.de/wp-content/uploads/2020/04/MitgefuehlFuerAndere.mp3',
        title: 'Mitgefühl für Andere (20 min)',
        artist: 'Yoga und Achtsamkeit in Bonn',
        imagePath: AssetPaths.backgroundRiver,
      ),
      Meditation(
        url:
            'https://yabonn.de/wp-content/uploads/2020/04/MitgefuehlFuerSichSelbst.mp3',
        title: 'Mitgefühl mit sich Selbst (15 min)',
        artist: 'Yoga und Achtsamkeit in Bonn',
        imagePath: AssetPaths.backgroundRiver,
      ),
    ],
    imagePath: AssetPaths.backgroundRiver,
  ),
];
