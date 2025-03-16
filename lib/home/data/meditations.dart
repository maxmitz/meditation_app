import 'package:meditation/meditation_overview/view_model/meditation_overview_data.dart';
import 'package:meditation/shared/domain/meditation.dart';
import 'package:meditation/shared/domain/meditation_elements.dart';
import 'package:meditation/shared/presentation/asset_paths.dart';

const categories = [
  sleep,
  meditationsMindfulness,
  meditationsRelax,
  meditationsPositivity,
  focus,
];

final allMeditations = [
  ...sleep.meditations,
  ...meditationsMindfulness.meditations,
  ...meditationsRelax.meditations,
  ...meditationsPositivity.meditations,
  ...focus.meditations,
];

const sleep = MeditationOverviewData(
  title: 'Schlafen',
  meditations: [
    Meditation(
      url:
          'https://d1cy5zxxhbcbkk.cloudfront.net/guided-meditations/Body-Scan-for-Sleep.mp3',
      title: 'Body Scan for Sleep',
      artist: 'UCLA',
      imagePath: AssetPaths.backgroundNightSky,
      duration: Duration(minutes: 14, seconds: 3),
      elements: [],
    ),
    Meditation(
      url: AssetPaths.meditationSleepInnerGarden,
      title: 'Geführte Meditation zum Einschlafen',
      artist: 'Inner Garden',
      imagePath: AssetPaths.backgroundNightSky,
      duration: Duration(minutes: 14, seconds: 3),
      elements: [],
    ),
  ],
  imagePath: AssetPaths.backgroundNightSky,
);

/// Body Scan Meditation (for relaxation & stress relief)
/// Mindfulness-Based Stress Reduction (MBSR) (secular, science-backed techniques)
/// Breath Awareness (simple breathwork to stay present)
/// Observing Thoughts (detaching from overthinking)
const meditationsMindfulness = MeditationOverviewData(
  title: 'Achtsamkeit',
  meditations: [
    Meditation(
      url:
          'https://mbsr-koeln.de/wp-content/uploads/2024/11/MBSR-Body-Scan-15-Min-mit-Schlussaktivierung-mono-145-.mp3',
      title: 'Körperscan',
      artist: 'MBSR Köln',
      imagePath: AssetPaths.backgroundNightSky,
      duration: Duration(minutes: 15, seconds: 4),
      elements: [],
    ),
    // TODO check all meditations after this
    Meditation(
      url:
          'https://d1cy5zxxhbcbkk.cloudfront.net/guided-meditations/03_Complete_Meditation_Instructions.mp3',
      title: 'Complete Meditation Instructions',
      artist: 'UCLA',
      imagePath: AssetPaths.backgroundRiver,
      duration: Duration(minutes: 19),
      elements: [],
    ),
    Meditation(
      url:
          'https://d1cy5zxxhbcbkk.cloudfront.net/guided-meditations/02_Breath_Sound_Body_Meditation.mp3',
      title: 'Breath, Sound, Body Meditation',
      artist: 'UCLA',
      imagePath: AssetPaths.backgroundRiver,
      duration: Duration(minutes: 12),
      elements: [],
    ),
    Meditation(
      url:
          'https://d1cy5zxxhbcbkk.cloudfront.net/guided-meditations/Body-Scan-Meditation.mp3',
      title: 'Short Body Scan',
      artist: 'UCLA',
      imagePath: AssetPaths.backgroundRiver,
      duration: Duration(minutes: 3),
      elements: [],
    ),
    Meditation(
      url:
          'https://mbsr-koeln.de/wp-content/uploads/2024/11/24-Atemmeditation-8-Min-145-mono.mp3',
      title: 'Atem-Meditation',
      artist: 'MBSR Köln',
      imagePath: AssetPaths.backgroundRiver,
      duration: Duration(minutes: 8),
      elements: [],
    ),
    Meditation(
      url: 'https://www.mbsr-kurs-koeln.de/downloads/AtemMeditation.mp3',
      title: 'Atem-Meditation',
      artist: 'MBSR Köln',
      imagePath: AssetPaths.backgroundRiver,
      duration: Duration(minutes: 13),
      elements: [],
    ),
    Meditation(
      url:
          'https://mbsr-koeln.de/wp-content/uploads/2024/11/24-Atemmeditation-15-Min-145-mono.mp3',
      title: 'Atem-Meditation',
      artist: 'MBSR Köln',
      imagePath: AssetPaths.backgroundRiver,
      duration: Duration(minutes: 15),
      elements: [],
    ),
    Meditation(
      url:
          'https://yabonn.de/wp-content/uploads/2020/04/MeditationAufKoerperempfindungen.mp3',
      title: 'Meditation auf Körper',
      artist: 'Yoga und Achtsamkeit in Bonn',
      imagePath: AssetPaths.backgroundRiver,
      duration: Duration(minutes: 20),
      elements: [],
    ),
    Meditation(
      url:
          'https://yabonn.de/wp-content/uploads/2020/04/MeditationAufGefuehle.mp3',
      title: 'Meditation auf Gefühle ',
      artist: 'Yoga und Achtsamkeit in Bonn',
      imagePath: AssetPaths.backgroundRiver,
      duration: Duration(minutes: 21),
      elements: [],
    ),
    Meditation(
      url:
          'https://yabonn.de/wp-content/uploads/2020/04/MeditationAufGedanken.mp3',
      title: 'Meditation auf Gedanken',
      artist: 'Yoga und Achtsamkeit in Bonn',
      imagePath: AssetPaths.backgroundRiver,
      duration: Duration(minutes: 22),
      elements: [],
    ),
    Meditation(
      url: 'https://yabonn.de/wp-content/uploads/2020/04/AtemMeditationI.mp3',
      title: 'Atem-Meditation I',
      artist: 'Yoga und Achtsamkeit in Bonn',
      imagePath: AssetPaths.backgroundRiver,
      duration: Duration(minutes: 15),
      elements: [],
    ),
  ],
  imagePath: AssetPaths.backgroundMountain,
);

/// Yoga Nidra (deep relaxation for the nervous system)
/// Progressive Muscle Relaxation (tension release before sleep)

const meditationsRelax = MeditationOverviewData(
  title: 'Entspannung',
  meditations: [
    Meditation(
      url: AssetPaths.meditationNonSleepDeepRestHuberman,
      title: 'Non Sleep Deep Rest',
      artist: 'Andrew Huberman',
      imagePath: AssetPaths.backgroundRiver,
      duration: Duration(minutes: 10, seconds: 42),
      elements: [
        MeditationElements.bodyScan,
        MeditationElements.breathing,
        MeditationElements.visualisation,
      ],
    ),
  ],
  imagePath: AssetPaths.backgroundFlowers,
);

/// Loving-Kindness (Metta) Meditation (cultivating compassion)
/// Gratitude Meditation (focusing on positive emotions)
/// Self-Compassion & Acceptance (releasing self-criticism)
/// Positive Affirmations (repeating uplifting phrases)

const meditationsPositivity = MeditationOverviewData(
  title: 'Positivität',
  meditations: [
    Meditation(
      url:
          'https://d1cy5zxxhbcbkk.cloudfront.net/guided-meditations/05_Loving_Kindness_Meditation.mp3',
      title: 'Loving Kindness Meditation',
      artist: 'UCLA',
      imagePath: AssetPaths.backgroundRiver,
      duration: Duration(minutes: 9),
      elements: [],
    ),
    Meditation(
      url:
          'https://mbsr-koeln.de/wp-content/uploads/2024/11/MBSR-Leuchtturmuebung-2-Anleitung-145-mono.mp3',
      title: 'Leuchtturm-Übung Anleitung',
      artist: 'MBSR Köln',
      imagePath: AssetPaths.backgroundRiver,
      duration: Duration(minutes: 9),
      elements: [],
    ),
    Meditation(
      url: 'https://www.mbsr-kurs-koeln.de/downloads/Metta.mp3',
      title: 'Metta/ Mantra Meditation',
      artist: 'MBSR Köln',
      imagePath: AssetPaths.backgroundRiver,
      duration: Duration(minutes: 13, seconds: 3),
      elements: [MeditationElements.positivity],
    ),
    Meditation(
      url: AssetPaths.meditationSelfLove,
      title: 'Self Love',
      artist: 'Self',
      imagePath: AssetPaths.backgroundRiver,
      duration: Duration(minutes: 9, seconds: 18),
      elements: [],
    ),
  ],
  imagePath: AssetPaths.backgroundRiver,
);

const focus = MeditationOverviewData(
  title: 'Extrem',
  meditations: [
    Meditation(
      url: AssetPaths.meditationWimHofSlow,
      title: 'Wim Hof Breathing Slow',
      artist: 'Wim Hof',
      imagePath: AssetPaths.backgroundGame,
      duration: Duration(minutes: 11),
      elements: [],
    ),
    Meditation(
      url: AssetPaths.meditationWimHof,
      title: 'Wim Hof Breathing',
      artist: 'Wim Hof',
      imagePath: AssetPaths.backgroundGame,
      duration: Duration(minutes: 11),
      elements: [],
    ),
  ],
  imagePath: AssetPaths.backgroundGame,
);
