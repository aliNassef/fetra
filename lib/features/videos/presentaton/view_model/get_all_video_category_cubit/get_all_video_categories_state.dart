part of 'get_all_video_categories_cubit.dart';

sealed class GetAllVideoCategoriesState extends Equatable {
  const GetAllVideoCategoriesState();

  @override
  List<Object> get props => [];
}

final class GetAllVideoCategoriesInitial extends GetAllVideoCategoriesState {}

final class GetAllVideoCategoriesSuccess extends GetAllVideoCategoriesState {
  final VideoCategoriesModel videoCategoriesModel;

  const GetAllVideoCategoriesSuccess({required this.videoCategoriesModel});
}

final class GetAllVideoCategoriesFailure extends GetAllVideoCategoriesState {
  final String errMessage;

  const GetAllVideoCategoriesFailure({required this.errMessage});
}

final class GetAllVideoCategoriesLoading extends GetAllVideoCategoriesState {}
