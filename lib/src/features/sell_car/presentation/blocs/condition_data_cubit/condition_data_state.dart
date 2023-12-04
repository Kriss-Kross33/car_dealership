part of 'condition_data_cubit.dart';

final class ConditionDataState extends Equatable {
  const ConditionDataState({this.selectedIndex = -1});

  final int selectedIndex;

  @override
  List<Object> get props => [selectedIndex];
}
