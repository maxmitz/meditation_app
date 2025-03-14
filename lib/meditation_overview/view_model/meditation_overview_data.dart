import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meditation/shared/domain/meditation.dart';

part 'meditation_overview_data.freezed.dart';
part 'meditation_overview_data.g.dart';

@freezed
class MeditationOverviewData with _$MeditationOverviewData {
  const factory MeditationOverviewData({
    required String title,
    required String imagePath,
    required List<Meditation> meditations,
  }) = _MeditationOverviewData;

  factory MeditationOverviewData.fromJson(Map<String, dynamic> json) =>
      _$MeditationOverviewDataFromJson(json);
}
