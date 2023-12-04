import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'condition_data_state.dart';

class ConditionDataCubit extends Cubit<ConditionDataState> {
  ConditionDataCubit() : super(const ConditionDataState());

  void onConditionChipSelected({required int selectedIndex}) {
    emit(ConditionDataState(selectedIndex: selectedIndex));
  }
}
