// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_and_hot.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewAndHot _$NewAndHotFromJson(Map<String, dynamic> json) => NewAndHot(
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => Result.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$NewAndHotToJson(NewAndHot instance) => <String, dynamic>{
      'results': instance.results,
    };
