import 'package:fetra/features/profile/data/repo/profile_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
part 'update_image_state.dart';

class UpdateImageCubit extends Cubit<UpdateImageState> {
  UpdateImageCubit(this._profileRepo) : super(UpdateImageInitial());
  final ProfileRepo _profileRepo;
  updateUserImage({required var image}) async {
    emit(UpdateImageLoading());
    var data = await _profileRepo.updateImage(image: image);
    data.fold(
      (l) => emit(UpdateImageSuccess()),
      (r) => emit(UpdateImageFailure()),
    );
  }
}
