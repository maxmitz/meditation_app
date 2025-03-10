class RoutePaths {
  static const home = RouteNames.home;
  static const breathingGame = '${RouteNames.home}${RouteNames.breathingGame}';
  static const audioPlayer =
      '${RouteNames.home}${RouteNames.meditationOverview}/${RouteNames.audioPlayer}';
  static const meditationOverview =
      '${RouteNames.home}${RouteNames.meditationOverview}';
}

class RouteNames {
  static const home = '/';
  static const breathingGame = 'breathingGame';
  static const audioPlayer = 'audioPlayer';
  static const meditationOverview = 'meditationOverview';
}
