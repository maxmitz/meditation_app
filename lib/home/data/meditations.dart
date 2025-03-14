import 'package:meditation/meditation_overview/view_model/meditation_overview_data.dart';
import 'package:meditation/shared/domain/meditation.dart';
import 'package:meditation/shared/presentation/asset_paths.dart';

const testMeditations = [
  Meditation(
    url: AssetPaths.meditation1Audio,
    title: 'Title1',
    artist: 'Artist1',
    imagePath: AssetPaths.backgroundNightSky,
  ),
  Meditation(
    url:
        'https://achtsamkeit.swiss/wp-content/uploads/2020/06/2018-01-01_Bodyscan.mp3',
    title: 'Title2',
    artist: 'Artist2',
    imagePath: AssetPaths.backgroundFlowers,
  ),
  Meditation(
    url:
        'https://d1cy5zxxhbcbkk.cloudfront.net/guided-meditations/05_Loving_Kindness_Meditation.mp3',
    title: 'Title3',
    artist: 'Artist3',
    imagePath: AssetPaths.backgroundRiver,
  ),
  Meditation(
    url:
        'https://d1cy5zxxhbcbkk.cloudfront.net/guided-meditations/Body-Scan-for-Sleep.mp3',
    title: 'Title4',
    artist: 'Artist4',
    imagePath: AssetPaths.backgroundRiver,
  ),
  Meditation(
    url:
        'https://www.cc.nih.gov/sites/default/files/assets/patientlibrary/audio/HJPanicAttack2CountingBreaths.mp3',
    title: 'Title5',
    artist: 'Artist5',
    imagePath: AssetPaths.backgroundRiver,
  ),
  Meditation(
    url:
        'https://www.cc.nih.gov/sites/default/files/assets/patientlibrary/audio/HJPanicAttack3Mantra.mp3',
    title: 'Title6',
    artist: 'Artist6',
    imagePath: AssetPaths.backgroundRiver,
  ),
];

const categories = [
  MeditationOverviewData(
    title: 'Schlaf',
    meditations: testMeditations,
    imagePath: AssetPaths.backgroundNightSky,
  ),
  MeditationOverviewData(
    title: 'Fokus',
    meditations: testMeditations,
    imagePath: AssetPaths.backgroundMountain,
  ),
  MeditationOverviewData(
    title: 'Entspannung',
    meditations: testMeditations,
    imagePath: AssetPaths.backgroundFlowers,
  ),
  MeditationOverviewData(
    title: 'Positivität',
    meditations: testMeditations,
    imagePath: AssetPaths.backgroundRiver,
  ),
];
