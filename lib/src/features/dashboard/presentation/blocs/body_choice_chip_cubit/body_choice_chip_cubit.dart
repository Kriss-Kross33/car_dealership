import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'body_choice_chip_state.dart';

class BodyChoiceChipCubit extends Cubit<BodyChoiceChipState> {
  BodyChoiceChipCubit() : super(const BodyChoiceChipState());

  void onChoiceChipSelected(int selectedIndex) {
    emit(state.copyWith(selectedIndex: selectedIndex));
  }
}
