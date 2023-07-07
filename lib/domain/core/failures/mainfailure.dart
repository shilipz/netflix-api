import 'package:freezed_annotation/freezed_annotation.dart';
part 'mainfailure.freezed.dart';

@freezed
class MainFailure with _$MainFailure {
  const factory MainFailure.clientFailure() = _MainFailure;
  const factory MainFailure.serverFailures() = _serverFailure;
  // factory MainFailure.fromJson(Map<String, dynamic> json) =>
  //     _$MainFailureFromJson(json);
}
