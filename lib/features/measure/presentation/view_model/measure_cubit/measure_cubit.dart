import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'measure_state.dart';

class MeasureCubit extends Cubit<MeasureState> {
  MeasureCubit() : super(MeasureInitial());
}
