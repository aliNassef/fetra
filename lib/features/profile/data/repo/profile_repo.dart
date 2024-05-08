import 'package:dartz/dartz.dart';
import 'package:fetra/features/profile/data/models/sleeping_model.dart';
import 'package:fetra/features/profile/data/models/update_image_model.dart';
import 'package:fetra/features/profile/data/models/walking_info_model.dart';
import 'package:fetra/features/profile/data/models/walking_model.dart';

abstract class ProfileRepo {
Future<Either<SleepingModel,String>> testSleeping({required String from,required String to});
  Future<Either<UpdateImageModel,String>> updateImage({required var image});
  Future<Either<WalkingModel, String>> testWalking({required String fats,required String category});
  Future<Either<WalkingInfoModel,String>> getWalkingInfo();
}