import 'package:dartz/dartz.dart';
import 'package:netflix/domain/core/failures/mainfailure.dart';
import 'package:netflix/domain/download/models/downloads.dart';

abstract class IdownloadRepo {
  Future<Either<MainFailure, List<Downloads>>> getdownloadsimage();
}
