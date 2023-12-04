import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'drive_train_state.dart';

class DriveTrainCubit extends Cubit<DriveTrainState> {
  DriveTrainCubit() : super(const DriveTrainState());

  void onDriveTrainChipSelected({required int selectedIndex}) {
    emit(DriveTrainState(selectedIndex: selectedIndex));
  }
}
