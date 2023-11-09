import 'package:car_dealership/src/core/core.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class WalkthroughIntroText extends StatelessWidget {
  const WalkthroughIntroText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, left: 25, right: 25),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Find your dream car in \na few taps for You',
            style: Theme.of(context).textTheme.displayMedium?.copyWith(
                  color: ColorConsts.white,
                  fontWeight: FontWeight.w800,
                ),
          ),
          const Gap(20),
          Text(
            'Search for new and used cars in your area or sell your '
            'car at your marketplace.',
            style: Theme.of(context)
                .textTheme
                .labelLarge
                ?.copyWith(color: ColorConsts.white, fontSize: 16),
          ),
        ],
      ),
    );
  }
}
