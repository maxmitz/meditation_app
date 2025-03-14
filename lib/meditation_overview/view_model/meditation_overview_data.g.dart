// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meditation_overview_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MeditationOverviewDataImpl _$$MeditationOverviewDataImplFromJson(
        Map<String, dynamic> json) =>
    _$MeditationOverviewDataImpl(
      title: json['title'] as String,
      imagePath: json['imagePath'] as String,
      meditations: (json['meditations'] as List<dynamic>)
          .map((e) => Meditation.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$MeditationOverviewDataImplToJson(
        _$MeditationOverviewDataImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'imagePath': instance.imagePath,
      'meditations': instance.meditations,
    };
