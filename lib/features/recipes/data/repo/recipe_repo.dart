import 'package:dartz/dartz.dart';
import 'package:fetra/features/recipes/data/models/recipe_model/recipe_model.dart';

abstract class RecipeRepo {
  Future<Either<RecipeModel, String>> getRecipes();
}
