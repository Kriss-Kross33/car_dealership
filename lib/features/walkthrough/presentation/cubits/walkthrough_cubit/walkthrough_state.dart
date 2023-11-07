part of 'walkthrough_cubit.dart';

class WalkthroughState extends Equatable {
  const WalkthroughState({this.currentPage = 0});

  final int currentPage;

  WalkthroughState copyWith({int? currentPage}) {
    return WalkthroughState(currentPage: currentPage ?? this.currentPage);
  }

  @override
  List<Object> get props => [currentPage];
}
