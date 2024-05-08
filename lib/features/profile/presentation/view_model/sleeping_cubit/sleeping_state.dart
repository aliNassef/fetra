part of 'sleeping_cubit.dart';

sealed class SleepingState extends Equatable {
  const SleepingState();

  @override
  List<Object> get props => [];
}

final class SleepingInitial extends SleepingState {}
final class SleepingLoading extends SleepingState {}
final class SleepingSuccess extends SleepingState {}
final class SleepingFailure extends SleepingState {}
