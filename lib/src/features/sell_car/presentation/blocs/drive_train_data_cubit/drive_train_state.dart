part of 'drive_train_cubit.dart';

final class DriveTrainState extends Equatable {
  const DriveTrainState({this.selectedIndex = -1});

  final int selectedIndex;

  @override
  List<Object> get props => [selectedIndex];
}
