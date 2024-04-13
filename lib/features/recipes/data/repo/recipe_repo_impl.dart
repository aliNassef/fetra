import 'package:dartz/dartz.dart';
import 'package:fetra/core/api/api_consumer.dart';
import 'package:fetra/core/api/end_ponits.dart';
import 'package:fetra/core/errors/exceptions.dart';

import 'package:fetra/features/recipes/data/models/recipe_model/recipe_model.dart';

import 'recipe_repo.dart';

class RecipeRepoImpl extends RecipeRepo {
  final ApiConsumer api;

  RecipeRepoImpl({required this.api});
  @override
  Future<Either<RecipeModel, String>> getRecipes() async {
    try {
      var response = await api.get(EndPoint.getMeals);
      var data = RecipeModel.fromJson(response);
      return Left(data);
    } on ServerException catch (e) {
      return Right(e.errModel.message);
    }
  }
}
