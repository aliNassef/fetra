part of 'get_video_details_cubit.dart';

sealed class GetVideoDetailsState extends Equatable {
  const GetVideoDetailsState();

  @override
  List<Object> get props => [];
}

final class GetVideoDetailsInitial extends GetVideoDetailsState {}

final class GetVideoDetailsSuccess extends GetVideoDetailsState {
  final VideoDetailsModel model;

  const GetVideoDetailsSuccess({required this.model});
}

final class GetVideoDetailsLoading extends GetVideoDetailsState {}

final class GetVideoDetailsFailure extends GetVideoDetailsState {
  final String errMessage;

  const GetVideoDetailsFailure({required this.errMessage});
}
