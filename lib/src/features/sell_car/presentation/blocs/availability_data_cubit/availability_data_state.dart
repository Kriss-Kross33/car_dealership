part of 'availability_data_cubit.dart';

final class AvailabilityDataState extends Equatable {
  const AvailabilityDataState({this.selectedIndex = -1});

  final int selectedIndex;

  @override
  List<Object> get props => [selectedIndex];
}
