import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'change_tab_item_cubit_state.dart';

class ChangeTabItemCubitCubit extends Cubit<ChangeTabItemCubitState> {
  ChangeTabItemCubitCubit() : super(ChangeTabItemCubitInitial());

  int curentIndex = 0;
  changeTab(int index) {
    curentIndex = index;
    emit(ChangeTabItemDone());
    couldChange();
  }

  couldChange() {
    emit(ChangeTabAvialbale());
  }
}
