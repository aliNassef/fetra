import 'package:dartz/dartz.dart';

import '../models/fat_calc_model.dart';

abstract class FatCalcRepo {
  Future<Either<FatCalcModel, String>> calculateMaleFats({
    required String weight,
    required String height,
    required String neck,
    required String middle,
  });
  Future<Either<FatCalcModel, String>> calculateFemaleFats({
    required String weight,
    required String height,
    required String neck,
    required String middle,
    required String hip,
  });
}
