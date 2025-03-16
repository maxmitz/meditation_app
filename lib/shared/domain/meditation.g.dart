// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meditation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MeditationImpl _$$MeditationImplFromJson(Map<String, dynamic> json) =>
    _$MeditationImpl(
      url: json['url'] as String,
      title: json['title'] as String,
      artist: json['artist'] as String,
      imagePath: json['imagePath'] as String,
      duration: Duration(microseconds: (json['duration'] as num).toInt()),
      elements: (json['elements'] as List<dynamic>)
          .map((e) => $enumDecode(_$MeditationElementsEnumMap, e))
          .toList(),
    );

Map<String, dynamic> _$$MeditationImplToJson(_$MeditationImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'title': instance.title,
      'artist': instance.artist,
      'imagePath': instance.imagePath,
      'duration': instance.duration.inMicroseconds,
      'elements': instance.elements
          .map((e) => _$MeditationElementsEnumMap[e]!)
          .toList(),
    };

const _$MeditationElementsEnumMap = {
  MeditationElements.visualisation: 'visualisation',
  MeditationElements.breathing: 'breathing',
  MeditationElements.bodyScan: 'bodyScan',
};
