import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'transmission_data_state.dart';

class TransmissionDataCubit extends Cubit<TransmissionDataState> {
  TransmissionDataCubit() : super(const TransmissionDataState());
  void onTransmissionChipSelected({required int selectedIndex}) {
    emit(TransmissionDataState(selectedIndex: selectedIndex));
  }
}
