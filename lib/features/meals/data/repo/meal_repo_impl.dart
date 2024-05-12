import 'package:dartz/dartz.dart';
import 'package:fetra/core/api/api_consumer.dart';
import 'package:fetra/core/api/end_ponits.dart';
import 'package:fetra/core/errors/exceptions.dart';
import 'package:fetra/features/meals/data/model/meal_model.dart';
import 'meal_repo.dart';

class MealRepoImpl extends MealRepo {
  final ApiConsumer api;

  MealRepoImpl({required this.api});
  @override
  Future<Either<MealsModel, String>> getFood(
      {required String numberMeals}) async {
    try {
      var response = await api.post(
        EndPoint.getFood,
        data: {
          "number_meals": numberMeals,
        },
      );
      var data = MealsModel.fromJson(response);
      return Left(data);
    } on ServerException catch (e) {
      return Right(e.errModel.message);
    }
  }
}
