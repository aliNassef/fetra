import 'package:dartz/dartz.dart';
import '../models/video_model.dart';

import '../models/video_categories.dart';
import '../models/video_details_model.dart';

abstract class VideoRepo {
  Future<Either<VideoModel, String>> getVideosById({required String type});
  Future<Either<VideoDetailsModel, String>> getVideoDetails(
      {required String id});
  Future<Either<VideoCategoriesModel, String>> getAllCategoryVideos();
}
