import 'package:freezed_annotation/freezed_annotation.dart';

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
  }) = _Meditation;

  factory Meditation.fromJson(Map<String, dynamic> json) =>
      _$MeditationFromJson(json);
}
