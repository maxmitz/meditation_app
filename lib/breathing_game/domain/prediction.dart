import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meditation/breathing_game/domain/breathing_game_enums.dart';

part 'prediction.freezed.dart';
part 'prediction.g.dart';

@freezed
class Prediction with _$Prediction {
  const factory Prediction({
    required PredictionResult result,
    required int numberOfBreathsLeftToDoubleTap,
  }) = _Prediction;

  factory Prediction.fromJson(Map<String, dynamic> json) =>
      _$PredictionFromJson(json);
}
