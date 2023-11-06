import 'dart:async';

import 'package:car_dealership/core/core.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late Timer _timer;
  @override
  void initState() {
    super.initState();
    handleWaitingLogic();
  }

  Future<void> handleWaitingLogic() async {
    Timer(const Duration(seconds: 3), () {
      context.pushReplacement(RouteConsts.walkthroughRoute);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Stack(
        children: [
          Center(
            child: Image.asset(
              AssetConsts.logo2,
              height: 200,
              width: 250,
            ),
          )
        ],
      ),
    );
  }
}
