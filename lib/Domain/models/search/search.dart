import 'package:json_annotation/json_annotation.dart';

import 'result.dart';

part 'search.g.dart';

@JsonSerializable()
class Search {
  List<Result>? results;

  Search({this.results});

  factory Search.fromJson(Map<String, dynamic> json) {
    return _$SearchFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SearchToJson(this);
}
