part of 'recipes_cubit.dart';

sealed class RecipesState extends Equatable {
  const RecipesState();

  @override
  List<Object> get props => [];
}

final class RecipesInitial extends RecipesState {}
