import 'package:fetra/features/profile/data/repo/profile_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'sleeping_state.dart';

class SleepingCubit extends Cubit<SleepingState> {
  SleepingCubit(this.profileRepo) : super(SleepingInitial());
  final ProfileRepo profileRepo;
  TextEditingController from = TextEditingController();
  TextEditingController to = TextEditingController();
  sleepTest({required String from, required String to}) async {
    emit(SleepingLoading());
    var data = await profileRepo.testSleeping(from: from, to: to);
    data.fold(
      (l) => emit(SleepingSuccess()),
      (r) => emit(SleepingFailure()),
    );
  }
}
