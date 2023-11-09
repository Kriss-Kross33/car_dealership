import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'walkthrough_state.dart';

class WalkthroughCubit extends Cubit<WalkthroughState> {
  WalkthroughCubit() : super(const WalkthroughState());

  void onPageChanged(int index) {
    emit(WalkthroughState(currentPage: index));
  }
}
