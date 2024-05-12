import 'package:dartz/dartz.dart';

import '../model/meal_model.dart';

abstract class MealRepo {
  Future<Either<MealsModel, String>> getFood({required String numberMeals});
}
