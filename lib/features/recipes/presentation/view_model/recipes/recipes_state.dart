part of 'recipes_cubit.dart';

sealed class RecipesState extends Equatable {
  const RecipesState();

  @override
  List<Object> get props => [];
}

final class RecipesInitial extends RecipesState {}

class RecipeDataLoaded extends RecipesState {
  final RecipeModel model;

  const RecipeDataLoaded({required this.model});
}

class RecipeDataLoading extends RecipesState {}

class RecipeDataFailure extends RecipesState {
  final String errMessage;

  const RecipeDataFailure({required this.errMessage});
}
