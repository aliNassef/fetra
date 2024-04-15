import 'package:dartz/dartz.dart';
import 'package:fetra/features/recipes/data/models/recipe_model/recipe_model.dart';
import 'package:fetra/features/recipes/data/models/recipes_details_model/recipes_details_model.dart';

abstract class RecipeRepo {
  Future<Either<RecipeModel, String>> getRecipes();
  Future<Either<RecipesDetailsModel, String>> getSpecificRecipe(
      {required String id});
}
