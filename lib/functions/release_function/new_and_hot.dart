import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:netflix/Domain/models/new_and_hot/new_and_hot.dart';
import '../../Domain/models/new_and_hot/result.dart';

Future<List<Result>> getImageNewAndHot() async {
  final response = await http.get(
    Uri.parse(
        'https://api.themoviedb.org/3/movie/upcoming?api_key=3e85384e236cd721df6f307aa5e327d8'),
  );
  if (response.statusCode == 200) {
    final jsondata = jsonDecode(response.body);
    final result = NewAndHot.fromJson(jsondata);
    if (result.results != null) {
      return result.results!;
    }
  }
  List<Result> empty = [];
  return empty;
}
