import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'vehicle_data_state.dart';

class VehicleDataCubit extends Cubit<VehicleDataState> {
  VehicleDataCubit() : super(const VehicleDataState());

  void onPageChanged(int pageIndex) {
    emit(
      state.copyWith(
        currentPage: pageIndex,
      ),
    );
  }
}
