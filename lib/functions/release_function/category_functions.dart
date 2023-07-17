import 'dart:convert';
import '../../Domain/models/releases/releases.dart';
import '../../Domain/models/releases/result.dart';
import 'package:http/http.dart' as http;

Future<List<Result>> getImagePopular() async {
  final response = await http.get(
    Uri.parse(
        'https://api.themoviedb.org/3/movie/popular?api_key=3e85384e236cd721df6f307aa5e327d8'),
  );
  if (response.statusCode == 200) {
    final jsondata = jsonDecode(response.body);
    final result = Releases.fromJson(jsondata);
    if (result.results != null) {
      return result.results!;
    }
  }
  List<Result> empty = [];
  return empty;
}

Future<List<Result>> getImageTrending() async {
  final response = await http.get(
    Uri.parse(
        'https://api.themoviedb.org/3/movie/now_playing?api_key=3e85384e236cd721df6f307aa5e327d8'),
  );
  if (response.statusCode == 200) {
    final jsondata = jsonDecode(response.body);
    final result = Releases.fromJson(jsondata);
    if (result.results != null) {
      return result.results!;
    }
  }
  List<Result> empty = [];
  return empty;
}

Future<List<Result>> getImageTop10() async {
  final response = await http.get(
    Uri.parse(
        'https://api.themoviedb.org/3/movie/top_rated?api_key=3e85384e236cd721df6f307aa5e327d8'),
  );
  if (response.statusCode == 200) {
    final jsondata = jsonDecode(response.body);
    final result = Releases.fromJson(jsondata);
    if (result.results != null) {
      return result.results!;
    }
  }
  List<Result> empty = [];
  return empty;
}

Future<List<Result>> getImageDrama() async {
  final response = await http.get(
    Uri.parse(
        'https://api.themoviedb.org/3/movie/upcoming?api_key=3e85384e236cd721df6f307aa5e327d8'),
  );
  if (response.statusCode == 200) {
    final jsondata = jsonDecode(response.body);
    final result = Releases.fromJson(jsondata);
    if (result.results != null) {
      return result.results!;
    }
  }
  List<Result> empty = [];
  return empty;
}
