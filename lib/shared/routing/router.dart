import 'package:go_router/go_router.dart';
import 'package:meditation/meditation_overview/presentation/meditation_overview_screen.dart';
import 'package:meditation/meditation_overview/view_model/meditation_overview_data.dart';
import 'package:meditation/search/presentation/search_screen.dart';
import 'package:meditation/shared/domain/meditation.dart';
import 'package:meditation/audio_player/presentation/audio_player_screen.dart';
import 'package:meditation/breathing_game/presentation/breathing_game_screen.dart';
import 'package:meditation/home/presentation/home_screen.dart';
import 'package:meditation/shared/presentation/scaffold_with_navigation_bar.dart';
import 'package:meditation/shared/routing/route_names.dart';

final goRouter = GoRouter(
  observers: [],
  routes: [
    StatefulShellRoute.indexedStack(
      builder: (_, __, shell) => ScaffoldWithNavBar(
        navigationShell: shell,
      ),
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: RouteNames.home,
              name: RouteNames.home,
              builder: (_, __) => const HomeScreen(),
              routes: [
                GoRoute(
                  path: RouteNames.breathingGame,
                  name: RouteNames.breathingGame,
                  builder: (_, __) => const BreathingGameScreen(),
                ),
                GoRoute(
                  path: RouteNames.meditationOverview,
                  name: RouteNames.meditationOverview,
                  builder: (context, state) {
                    final meditationOverviewData =
                        state.extra as MeditationOverviewData;
                    return MeditationOverviewScreen(
                      meditationOverviewData: meditationOverviewData,
                    );
                  },
                  routes: [
                    GoRoute(
                      path: RouteNames.audioPlayer,
                      name: RouteNames.audioPlayer,
                      builder: (context, state) {
                        final meditation = state.extra as Meditation;
                        return AudioPlayerScreen(meditation: meditation);
                      },
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: RouteNames.search,
              name: RouteNames.search,
              builder: (_, __) => const SearchScreen(),
            ),
          ],
        ),
      ],
    ),
  ],
);
