 import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'meal_state.dart';

class MealCubit extends Cubit<MealState> {
  MealCubit() : super(MealInitial());
   int currentPage = 1;
  goToNextPage(int maxVal) {
    emit(ChangeState());
    if (currentPage < maxVal) {
      currentPage++;
    }
    emit(ChangePage());
  }

  backToPerviouspage() {
    emit(ChangeState());

    if (currentPage > 1) {
      currentPage--;
    }
    emit(ChangePage());
  }
}
