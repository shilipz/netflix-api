// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'releases.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Releases _$ReleasesFromJson(Map<String, dynamic> json) => Releases(
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => Result.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ReleasesToJson(Releases instance) => <String, dynamic>{
      'results': instance.results,
    };
