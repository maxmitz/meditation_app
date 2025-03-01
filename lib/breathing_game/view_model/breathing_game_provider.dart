import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:meditation/breathing_game/domain/breathing_game_enums.dart';
import 'package:meditation/breathing_game/domain/prediction.dart';
import 'package:meditation/breathing_game/view_model/breathing_game_state.dart';

class BreathingGameNotifier extends StateNotifier<BreathingGameState> {
  BreathingGameNotifier()
      : super(
          BreathingGameState(
            results: [],
            numberOfBreathsToTapTwice: 7,
            showResults: true,
          ),
        );

  void resetResults() {
    state = state.copyWith(results: []);
  }

  void toggleShowResults() {
    state = state.copyWith(showResults: !state.showResults);
  }

  void singleTap() {
    final numberOfBreathsLeftToDoubleTap = state.results.isEmpty
        ? state.numberOfBreathsToTapTwice
        : state.results.last.numberOfBreathsLeftToDoubleTap;

    final isCorrect =
        numberOfBreathsLeftToDoubleTap % state.numberOfBreathsToTapTwice != 1;

    final result = isCorrect
        ? PredictionResult.correctOneTap
        : PredictionResult.wrongOneTap;

    final prediction = Prediction(
      result: result,
      numberOfBreathsLeftToDoubleTap: isCorrect
          ? numberOfBreathsLeftToDoubleTap - 1
          : state.numberOfBreathsToTapTwice,
    );

    state = state.copyWith(
      results: [
        ...state.results,
        prediction,
      ],
    );
  }

  void doubleTap() {
    final numberOfBreathsLeftToDoubleTap = state.results.isEmpty
        ? state.numberOfBreathsToTapTwice
        : state.results.last.numberOfBreathsLeftToDoubleTap;

    final isCorrect =
        numberOfBreathsLeftToDoubleTap % state.numberOfBreathsToTapTwice == 1;
    final result = isCorrect
        ? PredictionResult.correctTwoTaps
        : PredictionResult.wrongTwoTaps;

    final prediction = Prediction(
      result: result,
      numberOfBreathsLeftToDoubleTap: state.numberOfBreathsToTapTwice,
    );

    state = state.copyWith(
      results: [
        ...state.results,
        prediction,
      ],
    );
  }
}

final breathingGameProvider =
    StateNotifierProvider<BreathingGameNotifier, BreathingGameState>(
  (ref) => BreathingGameNotifier(),
);
