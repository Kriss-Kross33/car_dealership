import 'package:authentication_repository/authentication_repository.dart';
import 'package:car_dealership/firebase_options.dart';
import 'package:car_dealership/src/app.dart';
import 'package:car_remote_api/car_remote_api.dart';
import 'package:car_repository/car_repository.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'src/core/core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setEnabledSystemUIMode(
    SystemUiMode.manual,
    overlays: [SystemUiOverlay.bottom],
  );
  await Firebase.initializeApp(
    name: 'kap-car-dealership',
    options: DefaultFirebaseOptions.currentPlatform,
  );

  Bloc.observer = SimpleBlocObserver();

  AuthenticationRepository authenticationRepository =
      AuthenticationRepository();
  final carApi = CarRemoteApi();
  CarRepository carRepository = CarRepository(carApi: carApi);
  runApp(
    App(
      authenticationRepository: authenticationRepository,
      carRepository: carRepository,
    ),
  );
}
