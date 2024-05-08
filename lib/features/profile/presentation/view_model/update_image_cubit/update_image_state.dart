part of 'update_image_cubit.dart';

sealed class UpdateImageState extends Equatable {
  const UpdateImageState();

  @override
  List<Object> get props => [];
}

final class UpdateImageInitial extends UpdateImageState {}

final class UpdateImageSuccess extends UpdateImageState {
 
}

final class UpdateImageFailure extends UpdateImageState {}

final class UpdateImageLoading extends UpdateImageState {}
