import 'package:fetra/features/recipes/data/models/recipe_model/recipe_model.dart';
import 'package:fetra/features/recipes/data/repo/recipe_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'recipes_state.dart';

class RecipesCubit extends Cubit<RecipesState> {
  RecipesCubit(this.recipeRepo) : super(RecipesInitial());

  final RecipeRepo recipeRepo;

  getRecipes() async {
    emit(RecipeDataLoading());
    var data = await recipeRepo.getRecipes();
    data.fold(
      (l) => emit(
        RecipeDataLoaded(model: l),
      ),
      (r) => emit(
        RecipeDataFailure(errMessage: r),
      ),
    );
  }
}
