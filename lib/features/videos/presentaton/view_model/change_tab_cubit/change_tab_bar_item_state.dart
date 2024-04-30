part of 'change_tab_bar_item_cubit.dart';

sealed class ChangeTabBarItemState extends Equatable {
  const ChangeTabBarItemState();

  @override
  List<Object> get props => [];
}

final class ChangeTabBarItemInitial extends ChangeTabBarItemState {}

final class ChangeTabBarItemDone extends ChangeTabBarItemState {}
