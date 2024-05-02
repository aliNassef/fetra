import 'package:fetra/features/videos/data/models/video_model.dart';
import 'package:fetra/features/videos/data/repo/video_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'get_video_by_id_state.dart';

class GetVideoByIdCubit extends Cubit<GetVideoByIdState> {
  GetVideoByIdCubit(this._videoRepo) : super(GetVideoByIdInitial());
  final VideoRepo _videoRepo;
  getVideoById({required String type}) async {
    emit(GetVideoByIdLoading());
    var data = await _videoRepo.getVideosById(type: type);
    data.fold(
      (l) => emit(GetVideoByIdSuccess(videoModel: l)),
      (r) => emit(GetVideoByIdFailure(errMessage: r)),
    );
  }
}
