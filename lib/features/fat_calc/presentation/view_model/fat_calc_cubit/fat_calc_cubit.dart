import '../../../data/repo/fat_calc_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../data/models/fat_calc_model.dart';

part 'fat_calc_state.dart';

class FatCalcCubit extends Cubit<FatCalcState> {
  FatCalcCubit(this.fatCalcRepo) : super(FatCalcInitial());
  final FatCalcRepo fatCalcRepo;
  // male
  TextEditingController maleWeight = TextEditingController();
  TextEditingController maleHeight = TextEditingController();
  TextEditingController maleNeck = TextEditingController();
  TextEditingController maleMiddle = TextEditingController();

  fatCalcMale() async {
    emit(LoadingCalculating());
    var data = await fatCalcRepo.calculateMaleFats(
      weight: maleWeight.text,
      height: maleHeight.text,
      neck: maleNeck.text,
      middle: maleMiddle.text,
    );

    data.fold(
      (l) => emit(SuccessCalculating(instance: l)),
      (r) => emit(FailureCalculating(errMessage: r)),
    );
  }

  // female
  TextEditingController femaleWeight = TextEditingController();
  TextEditingController femaleHeight = TextEditingController();
  TextEditingController femaleNeck = TextEditingController();
  TextEditingController femaleMiddle = TextEditingController();
  TextEditingController femaleLib = TextEditingController();

  fatCalcFemale() async {
    emit(LoadingCalculating());
    var data = await fatCalcRepo.calculateFemaleFats(
      weight: femaleWeight.text,
      height: femaleHeight.text,
      neck: femaleNeck.text,
      middle: femaleMiddle.text,
      hip: femaleLib.text,
    );
    data.fold(
      (l) => emit(SuccessCalculating(instance: l)),
      (r) => emit(FailureCalculating(errMessage: r)),
    );
  }
}
