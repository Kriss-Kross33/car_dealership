part of 'nav_bar_cubit.dart';

class NavBarState extends Equatable {
  const NavBarState({this.index = 0});

  final int index;

  NavBarState copyWith({int? index}) {
    return NavBarState(index: index ?? this.index);
  }

  @override
  List<Object> get props => [index];
}
