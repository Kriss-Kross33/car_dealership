import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'walkthrough_state.dart';

class WalkthroughCubit extends Cubit<WalkthroughState> {
  WalkthroughCubit() : super(const WalkthroughState());

  void onPageChanged(int index) {
    emit(WalkthroughState(currentPage: index));
  }
}
