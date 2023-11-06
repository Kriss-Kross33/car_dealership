import 'package:car_dealership/features/features.dart';
import 'package:car_dealership/features/splash/presentation/presentation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'route_consts.dart';

class AppRouter {
  static GoRouter router = GoRouter(
    routes: <RouteBase>[
      //* Splash
      GoRoute(
        path: RouteConsts.splashRoute,
        pageBuilder: (context, state) {
          return const MaterialPage(
            child: SplashScreen(),
          );
        },
      ),
      GoRoute(
        path: RouteConsts.walkthroughRoute,
        pageBuilder: (context, state) {
          return const MaterialPage(
            child: WalkthroughScreen(),
          );
        },
      )
    ],
  );
}
