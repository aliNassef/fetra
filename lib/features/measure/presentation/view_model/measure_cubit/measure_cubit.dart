import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'measure_state.dart';

class MeasureCubit extends Cubit<MeasureState> {
  MeasureCubit() : super(MeasureInitial());
}
