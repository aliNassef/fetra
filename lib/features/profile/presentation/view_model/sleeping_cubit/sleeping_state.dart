part of 'sleeping_cubit.dart';

sealed class SleepingState extends Equatable {
  const SleepingState();

  @override
  List<Object> get props => [];
}

final class SleepingInitial extends SleepingState {}
