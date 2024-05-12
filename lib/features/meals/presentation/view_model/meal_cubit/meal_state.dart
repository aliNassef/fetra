part of 'meal_cubit.dart';

sealed class MealState extends Equatable {
  const MealState();

  @override
  List<Object> get props => [];
}

final class MealInitial extends MealState {}

final class ChangePage extends MealState {}
final class ChangeState extends MealState {}
