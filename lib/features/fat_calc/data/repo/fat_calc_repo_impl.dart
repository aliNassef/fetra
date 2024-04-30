import 'package:dartz/dartz.dart';
import 'package:fetra/core/api/api_consumer.dart';
import 'package:fetra/core/api/end_ponits.dart';
import 'package:fetra/core/errors/exceptions.dart';

import 'package:fetra/features/fat_calc/data/models/fat_calc_model.dart';

import 'fat_calc_repo.dart';

class FatCalcRepoImpl extends FatCalcRepo {
  final ApiConsumer api;

  FatCalcRepoImpl({required this.api});
  @override
  Future<Either<FatCalcModel, String>> calculateFemaleFats({
    required String weight,
    required String height,
    required String neck,
    required String middle,
    required String hip,
  }) async {
    try {
      final response = await api.post(
        EndPoint.rateFemale,
        data: {
          ApiKey.weight: weight,
          ApiKey.height: height,
          ApiKey.neck: neck,
          ApiKey.middle: middle,
          ApiKey.hip: hip,
        },
      );
      var data = FatCalcModel.fromJson(response);
      return Left(data);
    } on ServerException catch (e) {
      return Right(e.errModel.message);
    }
  }

  @override
  Future<Either<FatCalcModel, String>> calculateMaleFats({
    required String weight,
    required String height,
    required String neck,
    required String middle,
  }) async {
    try {
      final response = await api.post(
        EndPoint.rateMale,
        data: {
          ApiKey.weight: weight,
          ApiKey.height: height,
          ApiKey.neck: neck,
          ApiKey.middle: middle,
        },
      );
      var data = FatCalcModel.fromJson(response);
      return Left(data);
    } on ServerException catch (e) {
      return Right(e.errModel.message);
    }
  }
}
