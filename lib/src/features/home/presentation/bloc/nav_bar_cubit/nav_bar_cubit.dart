import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'nav_bar_state.dart';

class NavBarCubit extends Cubit<NavBarState> {
  NavBarCubit() : super(const NavBarState());

  void onTabSelected(int index) {
    emit(state.copyWith(index: index));
  }
}
