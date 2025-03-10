import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:meditation/breathing_game/domain/breathing_game_enums.dart';
import 'package:meditation/breathing_game/view_model/breathing_game_provider.dart';
import 'package:meditation/shared/presentation/custom_back_button.dart';

class BreathingGameScreen extends ConsumerStatefulWidget {
  const BreathingGameScreen({super.key});

  @override
  BreathingGameScreenState createState() => BreathingGameScreenState();
}

class BreathingGameScreenState extends ConsumerState<BreathingGameScreen> {
  Timer? timer;

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(breathingGameProvider);
    final breathingGameNotifier = ref.read(breathingGameProvider.notifier);

    void startTimer() {
      timer ??= Timer.periodic(
        const Duration(seconds: 1),
        (_) => breathingGameNotifier.increaseMeditationDurationByOneSecond(),
      );
    }

    void resetTimer() {
      timer?.cancel();
      timer = null;
      breathingGameNotifier.resetMeditationTimer();
    }

    return Scaffold(
      body: SafeArea(
        child: GestureDetector(
          onLongPress: () => Navigator.of(context).pop(),
          onTap: () {
            startTimer();
            breathingGameNotifier.singleTap();
          },
          onDoubleTap: breathingGameNotifier.doubleTap,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Tippe bei jedem Ausatmen einmal auf den Bildschirm. Tippe bei jedem ${state.numberOfBreathsToTapTwice}. Ausatmen doppelt auf den Bilschirm. Durch langes Drücken wird das Spiel beendet.',
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w900,
                    letterSpacing: -1,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      onPressed: () {
                        resetTimer();
                        breathingGameNotifier.resetResults();
                      },
                      icon: const Icon(Icons.restore),
                      iconSize: 64,
                    ),
                    IconButton(
                      onPressed: breathingGameNotifier.toggleShowResults,
                      icon: Icon(
                        state.showResults
                            ? Icons.visibility
                            : Icons.visibility_off,
                      ),
                      iconSize: 64,
                    ),
                    DropdownButton<int>(
                      value: state.numberOfBreathsToTapTwice,
                      items: [
                        for (int i = 3; i <= 20; i++)
                          DropdownMenuItem<int>(
                            value: i,
                            child: Text(i.toString()),
                          ),
                      ],
                      onChanged: (newNumberOfBreathsToTapTwice) =>
                          newNumberOfBreathsToTapTwice == null
                              ? null
                              : breathingGameNotifier
                                  .setNumberOfBreathsToTapTwice(
                                  newNumberOfBreathsToTapTwice,
                                ),
                    ),
                  ],
                ),
                if (state.showResults) ...[
                  const SizedBox(height: 16),
                  Text(
                    'Meditationsdauer: ${state.meditationDuration.inMinutes}:${state.meditationDuration.inSeconds.remainder(60).toString().padLeft(2, '0')}',
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: state.numberOfBreathsToTapTwice,
                      children: [
                        for (final result in state.results)
                          Container(
                            color: result.result.isCorrect
                                ? Colors.green
                                : Colors.red,
                            child: Center(
                              child: Text(
                                result.numberOfBreathsLeftToDoubleTap
                                    .toString(),
                                style: const TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                ],
                const CustomBackButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
