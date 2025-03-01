import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meditation/breathing_game/domain/prediction.dart';

part 'breathing_game_state.freezed.dart';
part 'breathing_game_state.g.dart';

@freezed
class BreathingGameState with _$BreathingGameState {
  factory BreathingGameState({
    required List<Prediction> results,
    required int numberOfBreathsToTapTwice,
    required bool showResults,
  }) = _BreathingGameState;

  factory BreathingGameState.fromJson(Map<String, dynamic> json) =>
      _$BreathingGameStateFromJson(json);
}
