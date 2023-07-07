import 'package:injectable/injectable.dart';
import 'package:netflix/domain/core/api_end_points.dart';
import 'package:netflix/domain/core/failures/mainfailure.dart';
import 'package:dartz/dartz.dart';
import 'package:netflix/domain/download/i_downloadrepo.dart';
import 'package:netflix/domain/download/models/downloads.dart';
import 'package:dio/dio.dart';

@LazySingleton(as: IdownloadRepo)
class DownloadsRepository implements IdownloadRepo {
  @override
  Future<Either<MainFailure, List<Downloads>>> getdownloadsimage() async {
    try {
      final Response response =
          await Dio(BaseOptions()).get(ApiEndPoints.downloads);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final downloadslist = (response.data['results'] as List).map((e) {
          return Downloads.fromJson(e);
        }).toList();

        print(downloadslist);
        return Right(downloadslist);
      } else {
        return const Left(MainFailure.serverFailures());
      }
    } catch (_) {
      return const Left(MainFailure.clientFailure());
    }
  }
}
