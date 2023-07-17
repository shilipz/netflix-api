import 'package:json_annotation/json_annotation.dart';

import 'result.dart';

part 'trending.g.dart';

@JsonSerializable()
class Trending {
  List<Result>? results;

  Trending({this.results});

  factory Trending.fromJson(Map<String, dynamic> json) {
    return _$TrendingFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TrendingToJson(this);
}
