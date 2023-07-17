import 'package:json_annotation/json_annotation.dart';

import 'result.dart';

part 'new_and_hot.g.dart';

@JsonSerializable()
class NewAndHot {
  List<Result>? results;

  NewAndHot({this.results});

  factory NewAndHot.fromJson(Map<String, dynamic> json) {
    return _$NewAndHotFromJson(json);
  }

  Map<String, dynamic> toJson() => _$NewAndHotToJson(this);
}
