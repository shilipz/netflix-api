import 'package:json_annotation/json_annotation.dart';

import 'result.dart';

part 'releases.g.dart';

@JsonSerializable()
class Releases {
  List<Result>? results;

  Releases({this.results});

  factory Releases.fromJson(Map<String, dynamic> json) {
    return _$ReleasesFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ReleasesToJson(this);
}
