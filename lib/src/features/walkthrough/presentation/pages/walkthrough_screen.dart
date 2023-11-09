import 'package:car_dealership/src/core/core.dart';
import 'package:car_dealership/src/features/features.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class WalkthroughScreen extends StatelessWidget {
  const WalkthroughScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).primaryColor;
    return Scaffold(
      body: LayoutBuilder(builder: (context, constraints) {
        return BlocProvider(
          create: (context) => WalkthroughCubit(),
          child: BlocBuilder<WalkthroughCubit, WalkthroughState>(
            builder: (context, state) {
              return Stack(
                children: [
                  Container(
                    width: constraints.maxWidth,
                    height: constraints.maxHeight,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: <Color>[
                          primaryColor,
                          primaryColor.brighten(10),
                          primaryColor.brighten(20)
                        ],
                      ),
                    ),
                  ),
                  Align(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 50,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const WalkthroughIntroText(),
                          WalkthroughPageView(
                            constraints: constraints,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned.fill(
                    bottom: 115,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        height: 25,
                        width: 70,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: List.generate(
                            3,
                            (index) => WalkthroughIndicator(
                              isSelected: index == state.currentPage,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 25,
                    right: 25,
                    bottom: 40,
                    child: Container(
                      height: 55,
                      decoration: const BoxDecoration(),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: ColorConsts.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        onPressed: () {
                          context.pushReplacement(RouteConsts.homeRoute);
                        },
                        child: Text(
                          'Get Started',
                          style:
                              Theme.of(context).textTheme.labelLarge?.copyWith(
                                    color: ColorConsts.primaryColor,
                                    fontWeight: FontWeight.w700,
                                  ),
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        );
      }),
    );
  }
}

class WalkthroughIndicator extends StatelessWidget {
  const WalkthroughIndicator({
    super.key,
    required this.isSelected,
  });

  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 6,
      width: 6,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isSelected
              ? ColorConsts.white
              : ColorConsts.white.withOpacity(0.5)),
    );
  }
}
