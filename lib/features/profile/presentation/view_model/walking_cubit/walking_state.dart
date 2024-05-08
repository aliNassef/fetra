part of 'walking_cubit.dart';

sealed class WalkingState extends Equatable {
  const WalkingState();

  @override
  List<Object> get props => [];
}

final class WalkingInitial extends WalkingState {}

final class WalkingSuccess extends WalkingState {}

final class WalkingFailure extends WalkingState {}

final class WalkingLoading extends WalkingState {}
