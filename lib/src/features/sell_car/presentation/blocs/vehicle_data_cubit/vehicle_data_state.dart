part of 'vehicle_data_cubit.dart';

final class VehicleDataState extends Equatable {
  const VehicleDataState({this.currentPage = 0});

  final int currentPage;

  VehicleDataState copyWith({int? currentPage}) {
    return VehicleDataState(
      currentPage: currentPage ?? this.currentPage,
    );
  }

  @override
  List<Object> get props => [currentPage];
}
