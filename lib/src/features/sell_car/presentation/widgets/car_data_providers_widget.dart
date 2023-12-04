part of '../pages/sell_car_screen.dart';

class _CarDataProvidersWidget extends StatelessWidget {
  const _CarDataProvidersWidget({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<VehicleDataCubit>(
          create: (context) => VehicleDataCubit(),
        ),
        BlocProvider<SellCarCubit>(
          create: (context) => SellCarCubit(
            carRepository: context.read<CarRepository>(),
          ),
        ),
        BlocProvider<AvailabilityDataCubit>(
          create: (context) => AvailabilityDataCubit(),
        ),
        BlocProvider<ConditionDataCubit>(
          create: (context) => ConditionDataCubit(),
        ),
        BlocProvider<DriveTrainCubit>(
          create: (context) => DriveTrainCubit(),
        ),
        BlocProvider<FuelDataCubit>(
          create: (context) => FuelDataCubit(),
        ),
        BlocProvider<TransmissionDataCubit>(
          create: (context) => TransmissionDataCubit(),
        ),
      ],
      child: child,
    );
  }
}
