import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meditation/shared/domain/meditation_elements.dart';

part 'meditation.freezed.dart';
part 'meditation.g.dart';

@freezed
class Meditation with _$Meditation {
  const factory Meditation({
    required String url,
    required String title,
    required String artist,
    required String imagePath,
    required Duration duration,
    required List<MeditationElements> elements,
  }) = _Meditation;

  factory Meditation.fromJson(Map<String, dynamic> json) =>
      _$MeditationFromJson(json);
}
