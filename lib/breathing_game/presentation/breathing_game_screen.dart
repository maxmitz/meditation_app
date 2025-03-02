import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:meditation/breathing_game/domain/breathing_game_enums.dart';
import 'package:meditation/breathing_game/view_model/breathing_game_provider.dart';

class BreathingGameScreen extends ConsumerWidget {
  const BreathingGameScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(breathingGameProvider);
    final breathingGameNotifier = ref.read(breathingGameProvider.notifier);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Breathing Game'),
      ),
      body: SafeArea(
        child: Center(
          child: GestureDetector(
            onLongPress: () => Navigator.of(context).pop(),
            onTap: breathingGameNotifier.singleTap,
            onDoubleTap: breathingGameNotifier.doubleTap,
            child: Container(
              color: Colors.blue.withOpacity(0.3),
              height: double.infinity,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
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
                            onPressed: breathingGameNotifier.resetResults,
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
                      if (state.showResults)
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
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
