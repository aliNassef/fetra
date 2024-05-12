import 'package:fetra/features/meals/data/model/meal_model.dart';
import 'package:fetra/features/meals/data/repo/meal_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'get_meal_state.dart';

class GetMealCubit extends Cubit<GetMealState> {
  GetMealCubit(this._mealRepo) : super(GetMealInitial());
  final MealRepo _mealRepo;
  getMeal({required String numberOfMeals}) async {
    emit(GetMealLoading());
    var data = await _mealRepo.getFood(numberMeals: numberOfMeals);
    data.fold(
      (l) => emit(GetMealSuccess(model: l)),
      (r) => emit(GetMealFailure(errMessage: r)),
    );
  }
}
