part of 'get_video_by_id_cubit.dart';

sealed class GetVideoByIdState extends Equatable {
  const GetVideoByIdState();

  @override
  List<Object> get props => [];
}

final class GetVideoByIdInitial extends GetVideoByIdState {}

final class GetVideoByIdSuccess extends GetVideoByIdState {
  final VideoModel videoModel;

  const GetVideoByIdSuccess({required this.videoModel});
}

final class GetVideoByIdFailure extends GetVideoByIdState {
  final String errMessage;

  const GetVideoByIdFailure({required this.errMessage});
}

final class GetVideoByIdLoading extends GetVideoByIdState {}
