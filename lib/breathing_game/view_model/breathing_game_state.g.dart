// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'breathing_game_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BreathingGameStateImpl _$$BreathingGameStateImplFromJson(
        Map<String, dynamic> json) =>
    _$BreathingGameStateImpl(
      results: (json['results'] as List<dynamic>)
          .map((e) => Prediction.fromJson(e as Map<String, dynamic>))
          .toList(),
      numberOfBreathsToTapTwice:
          (json['numberOfBreathsToTapTwice'] as num).toInt(),
      showResults: json['showResults'] as bool,
    );

Map<String, dynamic> _$$BreathingGameStateImplToJson(
        _$BreathingGameStateImpl instance) =>
    <String, dynamic>{
      'results': instance.results,
      'numberOfBreathsToTapTwice': instance.numberOfBreathsToTapTwice,
      'showResults': instance.showResults,
    };
