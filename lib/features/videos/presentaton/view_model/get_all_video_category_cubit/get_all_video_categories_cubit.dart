import '../../../data/models/video_categories.dart';
import '../../../data/repo/video_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'get_all_video_categories_state.dart';

class GetAllVideoCategoriesCubit extends Cubit<GetAllVideoCategoriesState> {
  GetAllVideoCategoriesCubit(this._videoRepo)
      : super(GetAllVideoCategoriesInitial());
  final VideoRepo _videoRepo;
  getAllCateory() async {
    emit(GetAllVideoCategoriesLoading());
    var data = await _videoRepo.getAllCategoryVideos();
    data.fold(
      (l) => emit(GetAllVideoCategoriesSuccess(videoCategoriesModel: l)),
      (r) => emit(GetAllVideoCategoriesFailure(errMessage: r)),
    );
  }
}
