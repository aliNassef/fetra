import 'package:dartz/dartz.dart';
import 'package:fetra/core/api/end_ponits.dart';
import 'package:fetra/core/errors/exceptions.dart';

import 'package:fetra/features/profile/data/models/sleeping_model.dart';

import 'package:fetra/features/profile/data/models/update_image_model.dart';

import 'package:fetra/features/profile/data/models/walking_info_model.dart';

import 'package:fetra/features/profile/data/models/walking_model.dart';

import '../../../../core/api/api_consumer.dart';
import 'profile_repo.dart';

class ProfileRepoImpl extends ProfileRepo {
  final ApiConsumer api;

  ProfileRepoImpl({required this.api});
  @override
  Future<Either<WalkingInfoModel, String>> getWalkingInfo() async {
    try {
      var response = await api.get(EndPoint.walkingCategories);
      var data = WalkingInfoModel.fromJson(response);
      return Left(data);
    } on ServerException catch (e) {
      return Right(e.errModel.message);
    }
  }

  @override
  Future<Either<SleepingModel, String>> testSleeping(
      {required String from, required String to}) async {
    try {
      var response = await api.post(EndPoint.sleepingTest, data: {
        "start_time": from,
        "end_time": to,
      });

      var data = SleepingModel.fromJson(response);
      return Left(data);
    } on ServerException catch (e) {
      return Right(e.errModel.message);
    }
  }

  @override
  Future<Either<WalkingModel, String>> testWalking(
      {required String fats, required String category}) async {
    try {
      var response = await api.post(
        EndPoint.walkingTest,
        data: {
          "fat": fats,
          "category_id": category,
        },
      );
      var data = WalkingModel.fromJson(response);
      return Left(data);
    } on ServerException catch (e) {
      return Right(e.errModel.message);
    }
  }

  @override
  Future<Either<UpdateImageModel, String>> updateImage({required image}) async {
    try {
      var response = await api.post(
        EndPoint.updateImage,
        data: {
          "img": image,
        },
      );
      var result = UpdateImageModel.fromJson(response.data);
      return Left(result);
    } on ServerException catch (e) {
      return Right(e.errModel.message);
    }
  }
}
