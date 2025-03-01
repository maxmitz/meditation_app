import 'package:go_router/go_router.dart';
import 'package:meditation/breathing_game/presentation/breathing_game_screen.dart';
import 'package:meditation/home/presentation/home_screen.dart';
import 'package:meditation/shared/routing/route_names.dart';

final goRouter = GoRouter(
  observers: [],
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
      ],
    ),
  ],
);
