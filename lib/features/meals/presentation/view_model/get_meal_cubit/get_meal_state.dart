part of 'get_meal_cubit.dart';

sealed class GetMealState extends Equatable {
  const GetMealState();

  @override
  List<Object> get props => [];
}

final class GetMealInitial extends GetMealState {}

final class GetMealSuccess extends GetMealState {
  final MealsModel model;

  const GetMealSuccess({required this.model});
}

final class GetMealFailure extends GetMealState {
  final String errMessage;

  const GetMealFailure({required this.errMessage});
}

final class GetMealLoading extends GetMealState {}
