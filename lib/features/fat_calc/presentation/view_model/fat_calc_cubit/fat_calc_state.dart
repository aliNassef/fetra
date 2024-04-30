part of 'fat_calc_cubit.dart';

sealed class FatCalcState extends Equatable {
  const FatCalcState();

  @override
  List<Object> get props => [];
}

final class FatCalcInitial extends FatCalcState {}

final class SuccessCalculating extends FatCalcState {}

final class FailureCalculating extends FatCalcState {}

final class LoadingCalculating extends FatCalcState {}
