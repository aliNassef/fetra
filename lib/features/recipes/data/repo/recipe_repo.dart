import 'package:dartz/dartz.dart';
import '../models/recipe_model/recipe_model.dart';
import '../models/recipes_details_model/recipes_details_model.dart';

abstract class RecipeRepo {
  Future<Either<RecipeModel, String>> getRecipes();
  Future<Either<RecipesDetailsModel, String>> getSpecificRecipe(
      {required String id});
}
