import 'package:meditation/shared/domain/meditation.dart';

class MeditationOverviewData {
  const MeditationOverviewData({
    required this.title,
    required this.meditations,
    required this.imagePath,
  });
  final String title;
  final String imagePath;
  final List<Meditation> meditations;
}
