import 'package:dartz/dartz.dart';
import '../../../../core/api/api_consumer.dart';
import '../../../../core/api/end_ponits.dart';
import '../../../../core/errors/exceptions.dart';
import '../models/video_categories.dart';
import '../models/video_details_model.dart';
import '../models/video_model.dart';
import 'video_repo.dart';

class VideoRepoImpl extends VideoRepo {
  final ApiConsumer api;

  VideoRepoImpl({required this.api});
  @override
  Future<Either<VideoCategoriesModel, String>> getAllCategoryVideos() async {
    try {
      var response = await api.get(EndPoint.getAllCategoryVideo);
      var data = VideoCategoriesModel.fromJson(response);
      return Left(data);
    } on ServerException catch (e) {
      return Right(e.errModel.message);
    }
  }

  @override
  Future<Either<VideoDetailsModel, String>> getVideoDetails(
      {required String id}) async {
    try {
      var response = await api.get('${EndPoint.getVideoDetails}$id');
      var data = VideoDetailsModel.fromJson(response);
      return Left(data);
    } on ServerException catch (e) {
      return Right(e.errModel.message);
    }
  }

  @override
  Future<Either<VideoModel, String>> getVideosById(
      {required String type}) async {
    try {
      var response = await api.get(EndPoint.getAllVideosById, queryParameters: {
        ApiKey.type: type,
      });
      var data = VideoModel.fromJson(response);
      return Left(data);
    } on ServerException catch (e) {
      return Right(e.errModel.message);
    }
  }
}
