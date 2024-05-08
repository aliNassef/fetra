import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'sleeping_state.dart';

class SleepingCubit extends Cubit<SleepingState> {
  SleepingCubit() : super(SleepingInitial());
}
