import 'package:fetra/features/profile/data/repo/profile_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'walking_state.dart';

class WalkingCubit extends Cubit<WalkingState> {
  WalkingCubit(this._profileRepo) : super(WalkingInitial());
  final ProfileRepo _profileRepo;

  testWalking({required String fats, required String category}) async {
    emit(WalkingLoading());
    var data = await _profileRepo.testWalking(fats: fats, category: category);
    data.fold(
      (l) => emit(WalkingSuccess()),
      (r) => emit(WalkingFailure()),
    );
  }
}
