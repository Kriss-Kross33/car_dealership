part of 'transmission_data_cubit.dart';

final class TransmissionDataState extends Equatable {
  const TransmissionDataState({this.selectedIndex = -1});

  final int selectedIndex;

  @override
  List<Object> get props => [selectedIndex];
}
