import 'package:authentication_repository/authentication_repository.dart';
import 'package:car_dealership/src/app_view.dart';
import 'package:car_repository/car_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  const App({
    super.key,
    required AuthenticationRepository authenticationRepository,
    required CarRepository carRepository,
  })  : _authenticationRepository = authenticationRepository,
        _carRepository = carRepository;

  final AuthenticationRepository _authenticationRepository;
  final CarRepository _carRepository;

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider.value(
          value: _authenticationRepository,
        ),
        RepositoryProvider.value(
          value: _carRepository,
        ),
      ],
      child: const AppView(),
    );
  }
}
