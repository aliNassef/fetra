import 'package:fetra/features/fat_calc/data/repo/fat_calc_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'fat_calc_state.dart';

class FatCalcCubit extends Cubit<FatCalcState> {
  FatCalcCubit(this.fatCalcRepo) : super(FatCalcInitial());
  final FatCalcRepo fatCalcRepo;
  fatCalcMale({
    required String weight,
    required String height,
    required String neck,
    required String middle,
  }) async {
    emit(LoadingCalculating());
    var data = await fatCalcRepo.calculateMaleFats(
      weight: weight,
      height: height,
      neck: neck,
      middle: middle,
    );

    data.fold(
      (l) => emit(SuccessCalculating()),
      (r) => emit(FailureCalculating()),
    );
  }

  fatCalcFemale({
    required String weight,
    required String height,
    required String neck,
    required String middle,
    required String hip,
  }) async {
    emit(LoadingCalculating());
    var data = await fatCalcRepo.calculateFemaleFats(
      weight: weight,
      height: height,
      neck: neck,
      middle: middle,
      hip: hip,
    );
    data.fold(
      (l) => emit(SuccessCalculating()),
      (r) => emit(FailureCalculating()),
    );
  }
}
