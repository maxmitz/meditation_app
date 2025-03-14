import 'package:meditation/meditation_overview/view_model/meditation_overview_data.dart';
import 'package:meditation/shared/domain/meditation.dart';
import 'package:meditation/shared/presentation/asset_paths.dart';

const categories = [
  MeditationOverviewData(
    title: 'Schlaf',
    meditations: [
      Meditation(
        url: AssetPaths.meditation1Audio,
        title: 'Body Scan for Sleep',
        artist: 'UCLA',
        imagePath: AssetPaths.backgroundNightSky,
        duration: Duration(minutes: 6),
      ),
      Meditation(
        url:
            'https://mbsr-koeln.de/wp-content/uploads/2024/11/MBSR-Body-Scan-15-Min-mit-Schlussaktivierung-mono-145-.mp3',
        title: 'MBSR Köln',
        artist: 'UCLA',
        imagePath: AssetPaths.backgroundNightSky,
        duration: Duration(minutes: 15),
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
        title: 'Complete Meditation Instructions',
        artist: 'UCLA',
        imagePath: AssetPaths.backgroundRiver,
        duration: Duration(minutes: 19),
      ),
      Meditation(
        url:
            'https://d1cy5zxxhbcbkk.cloudfront.net/guided-meditations/02_Breath_Sound_Body_Meditation.mp3',
        title: 'Breath, Sound, Body Meditation',
        artist: 'UCLA',
        imagePath: AssetPaths.backgroundRiver,
        duration: Duration(minutes: 12),
      ),
      Meditation(
        url:
            'https://d1cy5zxxhbcbkk.cloudfront.net/guided-meditations/Body-Scan-Meditation.mp3',
        title: 'Short Body Scan',
        artist: 'UCLA',
        imagePath: AssetPaths.backgroundRiver,
        duration: Duration(minutes: 3),
      ),
      Meditation(
        url:
            'https://mbsr-koeln.de/wp-content/uploads/2024/11/24-Atemmeditation-8-Min-145-mono.mp3',
        title: 'Atem-Meditation',
        artist: 'MBSR Köln',
        imagePath: AssetPaths.backgroundRiver,
        duration: Duration(minutes: 8),
      ),
      Meditation(
        url: 'https://www.mbsr-kurs-koeln.de/downloads/AtemMeditation.mp3',
        title: 'Atem-Meditation',
        artist: 'MBSR Köln',
        imagePath: AssetPaths.backgroundRiver,
        duration: Duration(minutes: 13),
      ),
      Meditation(
        url:
            'https://mbsr-koeln.de/wp-content/uploads/2024/11/24-Atemmeditation-15-Min-145-mono.mp3',
        title: 'Atem-Meditation',
        artist: 'MBSR Köln',
        imagePath: AssetPaths.backgroundRiver,
        duration: Duration(minutes: 15),
      ),
      Meditation(
        url:
            'https://yabonn.de/wp-content/uploads/2020/04/MeditationAufKoerperempfindungen.mp3',
        title: 'Meditation auf Körper',
        artist: 'Yoga und Achtsamkeit in Bonn',
        imagePath: AssetPaths.backgroundRiver,
        duration: Duration(minutes: 20),
      ),
      Meditation(
        url:
            'https://yabonn.de/wp-content/uploads/2020/04/MeditationAufGefuehle.mp3',
        title: 'Meditation auf Gefühle ',
        artist: 'Yoga und Achtsamkeit in Bonn',
        imagePath: AssetPaths.backgroundRiver,
        duration: Duration(minutes: 21),
      ),
      Meditation(
        url:
            'https://yabonn.de/wp-content/uploads/2020/04/MeditationAufGedanken.mp3',
        title: 'Meditation auf Gedanken',
        artist: 'Yoga und Achtsamkeit in Bonn',
        imagePath: AssetPaths.backgroundRiver,
        duration: Duration(minutes: 22),
      ),
      Meditation(
        url: 'https://yabonn.de/wp-content/uploads/2020/04/AtemMeditationI.mp3',
        title: 'Atem-Meditation I',
        artist: 'Yoga und Achtsamkeit in Bonn',
        imagePath: AssetPaths.backgroundRiver,
        duration: Duration(minutes: 15),
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
        title: 'Loving Kindness Meditation',
        artist: 'UCLA',
        imagePath: AssetPaths.backgroundRiver,
        duration: Duration(minutes: 9),
      ),
      Meditation(
        url:
            'https://mbsr-koeln.de/wp-content/uploads/2024/11/MBSR-Leuchtturmuebung-2-Anleitung-145-mono.mp3',
        title: 'Leuchtturm-Übung Anleitung',
        artist: 'MBSR Köln',
        imagePath: AssetPaths.backgroundRiver,
        duration: Duration(minutes: 9),
      ),
      Meditation(
        url: 'https://www.mbsr-kurs-koeln.de/downloads/Metta.mp3',
        title: 'Metta/ Mantra Meditation',
        artist: 'MBSR Köln',
        imagePath: AssetPaths.backgroundRiver,
        duration: Duration(minutes: 13),
      ),
      Meditation(
        url:
            'https://yabonn.de/wp-content/uploads/2020/04/MitgefuehlFuerSichSelbst.mp3',
        title: 'Mitgefühl mit sich Selbst',
        artist: 'Yoga und Achtsamkeit in Bonn',
        imagePath: AssetPaths.backgroundRiver,
        duration: Duration(minutes: 15),
      ),
      Meditation(
        url:
            'https://yabonn.de/wp-content/uploads/2020/04/MeditationZuDankbarkeit.mp3',
        title: 'Dankbarkeit',
        artist: 'Yoga und Achtsamkeit in Bonn',
        imagePath: AssetPaths.backgroundRiver,
        duration: Duration(minutes: 18),
      ),
      Meditation(
        url:
            'https://yabonn.de/wp-content/uploads/2020/04/MitgefuehlFuerAndere.mp3',
        title: 'Mitgefühl für Andere',
        artist: 'Yoga und Achtsamkeit in Bonn',
        imagePath: AssetPaths.backgroundRiver,
        duration: Duration(minutes: 20),
      ),
      Meditation(
        url:
            'https://yabonn.de/wp-content/uploads/2020/04/MitgefuehlFuerSichSelbst.mp3',
        title: 'Mitgefühl mit sich Selbst',
        artist: 'Yoga und Achtsamkeit in Bonn',
        imagePath: AssetPaths.backgroundRiver,
        duration: Duration(minutes: 15),
      ),
    ],
    imagePath: AssetPaths.backgroundRiver,
  ),
];
