import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'change_tab_bar_item_state.dart';

class ChangeTabBarItemCubit extends Cubit<ChangeTabBarItemState> {
  ChangeTabBarItemCubit() : super(ChangeTabBarItemInitial());
  int currentIndex = 0;

  changeTabIndex(int index) {
    emit(ChangeTabBarItemInitial());
    currentIndex = index;
    emit(ChangeTabBarItemDone());
  }
}
