import 'package:fetra/features/videos/data/models/video_details_model.dart';
import 'package:fetra/features/videos/data/repo/video_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'get_video_details_state.dart';

class GetVideoDetailsCubit extends Cubit<GetVideoDetailsState> {
  GetVideoDetailsCubit(this._videoRepo) : super(GetVideoDetailsInitial());
  final VideoRepo _videoRepo;
  getVideoDetails({required String id}) async {
    emit(GetVideoDetailsLoading());
    var data = await _videoRepo.getVideoDetails(id: id);
    data.fold(
      (l) => emit(GetVideoDetailsSuccess(model: l)),
      (r) => emit(GetVideoDetailsFailure(errMessage: r)),
    );
  }
}
