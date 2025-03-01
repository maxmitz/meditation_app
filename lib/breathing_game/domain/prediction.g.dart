// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prediction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PredictionImpl _$$PredictionImplFromJson(Map<String, dynamic> json) =>
    _$PredictionImpl(
      result: $enumDecode(_$PredictionResultEnumMap, json['result']),
      numberOfBreathsLeftToDoubleTap:
          (json['numberOfBreathsLeftToDoubleTap'] as num).toInt(),
    );

Map<String, dynamic> _$$PredictionImplToJson(_$PredictionImpl instance) =>
    <String, dynamic>{
      'result': _$PredictionResultEnumMap[instance.result]!,
      'numberOfBreathsLeftToDoubleTap': instance.numberOfBreathsLeftToDoubleTap,
    };

const _$PredictionResultEnumMap = {
  PredictionResult.correctOneTap: 'correctOneTap',
  PredictionResult.wrongOneTap: 'wrongOneTap',
  PredictionResult.correctTwoTaps: 'correctTwoTaps',
  PredictionResult.wrongTwoTaps: 'wrongTwoTaps',
};
