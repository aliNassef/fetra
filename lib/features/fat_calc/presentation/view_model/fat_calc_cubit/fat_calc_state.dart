part of 'fat_calc_cubit.dart';

sealed class FatCalcState extends Equatable {
  const FatCalcState();

  @override
  List<Object> get props => [];
}

final class FatCalcInitial extends FatCalcState {}

final class SuccessCalculating extends FatCalcState {
  final FatCalcModel instance;

  const SuccessCalculating({required this.instance});
}

final class FailureCalculating extends FatCalcState {
  final String errMessage;

  const FailureCalculating({required this.errMessage});
}

final class LoadingCalculating extends FatCalcState {}
