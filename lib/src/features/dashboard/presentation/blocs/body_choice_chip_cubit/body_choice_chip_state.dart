part of 'body_choice_chip_cubit.dart';

class BodyChoiceChipState extends Equatable {
  const BodyChoiceChipState({this.selectedIndex = 0});

  final int selectedIndex;

  BodyChoiceChipState copyWith({int? selectedIndex}) {
    return BodyChoiceChipState(
      selectedIndex: selectedIndex ?? this.selectedIndex,
    );
  }

  @override
  List<Object> get props => [
        selectedIndex,
      ];
}
