part of 'recipe_details_cubit.dart';

sealed class RecipeDetailsState extends Equatable {
  const RecipeDetailsState();

  @override
  List<Object> get props => [];
}

final class RecipeDetailsInitial extends RecipeDetailsState {}

final class RecipeDetailsSuccess extends RecipeDetailsState {
  final RecipesDetailsModel model;

  const RecipeDetailsSuccess({required this.model});
}

final class RecipeDetailsLoading extends RecipeDetailsState {}

final class RecipeDetailsFailure extends RecipeDetailsState {
  final String errMesage;

  const RecipeDetailsFailure({required this.errMesage});
}
