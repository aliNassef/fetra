part of 'change_tab_item_cubit_cubit.dart';

sealed class ChangeTabItemCubitState extends Equatable {
  const ChangeTabItemCubitState();

  @override
  List<Object> get props => [];
}

final class ChangeTabItemCubitInitial extends ChangeTabItemCubitState {}

final class ChangeTabItemDone extends ChangeTabItemCubitState {}

final class ChangeTabAvialbale extends ChangeTabItemCubitState {}
