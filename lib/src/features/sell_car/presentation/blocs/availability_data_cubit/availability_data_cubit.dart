import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'availability_data_state.dart';

class AvailabilityDataCubit extends Cubit<AvailabilityDataState> {
  AvailabilityDataCubit() : super(const AvailabilityDataState());

  void onAvailabilityChipSelected({required int selectedIndex}) {
    emit(AvailabilityDataState(selectedIndex: selectedIndex));
  }
}
