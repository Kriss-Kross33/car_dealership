import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'fuel_data_state.dart';

class FuelDataCubit extends Cubit<FuelDataState> {
  FuelDataCubit() : super(const FuelDataState());

  void onFuelChipSelected({required int selectedIndex}) {
    emit(FuelDataState(selectedIndex: selectedIndex));
  }
}
