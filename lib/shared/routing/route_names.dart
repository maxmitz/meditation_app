class RoutePaths {
  static const home = RouteNames.home;
  static const breathingGame = '${RouteNames.home}${RouteNames.breathingGame}';
  static const audioPlayer =
      '${RouteNames.home}${RouteNames.meditationOverview}/${RouteNames.audioPlayer}';
  static const meditationOverview =
      '${RouteNames.home}${RouteNames.meditationOverview}';
  static const search = RouteNames.search;
}

class RouteNames {
  static const home = '/';
  static const breathingGame = 'breathingGame';
  static const audioPlayer = 'audioPlayer';
  static const meditationOverview = 'meditationOverview';
  static const search = '/search';
}
