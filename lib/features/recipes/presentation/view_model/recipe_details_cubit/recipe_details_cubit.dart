import '../../../data/repo/recipe_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import '../../../data/models/recipes_details_model/recipes_details_model.dart';

part 'recipe_details_state.dart';

class RecipeDetailsCubit extends Cubit<RecipeDetailsState> {
  RecipeDetailsCubit(this.recipeRepo) : super(RecipeDetailsInitial());
  final RecipeRepo recipeRepo;

  getSpecificRecipe(String id) async {
    emit(RecipeDetailsLoading());
    var data = await recipeRepo.getSpecificRecipe(id: id);
    data.fold(
      (l) => emit(
        RecipeDetailsSuccess(model: l),
      ),
      (r) => emit(
        RecipeDetailsFailure(errMesage: r),
      ),
    );
  }
}
