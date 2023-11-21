import 'package:car_dealership/src/core/core.dart';
import 'package:car_dealership/src/features/dashboard/dashboard.dart';
import 'package:car_repository/car_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

part '../widgets/car_body_choice_chips.dart';
part '../widgets/car_recommendation_section.dart';
part '../widgets/dashboard_section.dart';
part '../widgets/profile_and_notifications_widget.dart';
part '../widgets/search_car_widget.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final carMake = <String>['sedan'];

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return ListView(
        children: [
          const _ProfielAndNotificationWidget(),
          const Gap(20),
          const _SearchCarWidget(),
          const Gap(20),
          const _CarBodyChoiceChips(),
          const Gap(40),
          _DashboardSection(
            sectionTitle: 'Car Recommendation',
            onViewAllPressed: () {},
          ),
          const Gap(20),
          _CarRecommentationSection(
            constraints: constraints,
          ),
          const Gap(30),
          _DashboardSection(
            sectionTitle: 'Car Recommendation',
            onViewAllPressed: () {},
          ),
          const Gap(20),
        ],
      );
    });
  }
}
