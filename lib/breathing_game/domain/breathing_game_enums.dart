enum PredictionResult {
  correctOneTap,
  wrongOneTap,
  correctTwoTaps,
  wrongTwoTaps,
}

extension PredictionResultX on PredictionResult {
  bool get isCorrect =>
      this == PredictionResult.correctOneTap ||
      this == PredictionResult.correctTwoTaps;
  bool get isWrong =>
      this == PredictionResult.wrongOneTap ||
      this == PredictionResult.wrongTwoTaps;
}
