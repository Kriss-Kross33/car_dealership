import 'package:authentication_repository/authentication_repository.dart';
import 'package:car_dealership/firebase_options.dart';
import 'package:car_dealership/src/app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    name: 'kap-car-dealership',
    options: DefaultFirebaseOptions.currentPlatform,
  );
  AuthenticationRepository authenticationRepository =
      AuthenticationRepository();
  runApp(
    App(
      authenticationRepository: authenticationRepository,
    ),
  );
}
