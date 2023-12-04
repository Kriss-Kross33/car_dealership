part of 'fuel_data_cubit.dart';

final class FuelDataState extends Equatable {
  const FuelDataState({this.selectedIndex = -1});

  final int selectedIndex;

  @override
  List<Object> get props => [selectedIndex];
}
