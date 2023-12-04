import 'package:car_dealership/src/common/common.dart';
import 'package:car_dealership/src/features/features.dart';
import 'package:car_repository/car_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

import '../../../../core/core.dart';

part '../widgets/availability_widget.dart';
part '../widgets/car_data_providers_widget.dart';
part '../widgets/condition_widget.dart';
part '../widgets/drive_train_widget.dart';
part '../widgets/fuel_widget.dart';
part '../widgets/registered_widget.dart';
part '../widgets/transmission_widget.dart';
part '../widgets/vehicle_info_first_page.dart';
part '../widgets/vehicle_info_second_page.dart';
part '../widgets/vehicle_info_third_page.dart';
part '../widgets/vehicle_property_widget.dart';

class SellCarScreen extends StatelessWidget {
  const SellCarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [
      const _VehicleInfoFirstPage(
        key: Key('_vehicle_info_first_page'),
      ),
      const _VehicleInfoSecondPage(
        key: Key('_vehicle_info_second_page'),
      ),
      const _VehicleInfoThirdPage(),
    ];

    return _CarDataProvidersWidget(
      key: const Key('_car_data_providers_widget'),
      child: LayoutBuilder(builder: (context, constraints) {
        return Padding(
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
            top: 50,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              BlocBuilder<VehicleDataCubit, VehicleDataState>(
                builder: (context, state) {
                  return Row(
                    children: [
                      CustomCloseButton(
                        onTap: () {},
                      ),
                      const Spacer(),
                      BlocBuilder<VehicleDataCubit, VehicleDataState>(
                        builder: (context, state) {
                          return SizedBox(
                            child: state.currentPage > 0
                                ? const Icon(
                                    Icons.check_circle,
                                    size: 18,
                                    color: ColorConsts.primaryColor,
                                  )
                                : Icon(
                                    Icons.circle_outlined,
                                    size: 18,
                                    color: ColorConsts.primaryColor
                                        .withOpacity(0.3),
                                  ),
                          );
                        },
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 2),
                        child: SizedBox(
                          width: 50,
                          child: Divider(
                            height: 1,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      BlocBuilder<VehicleDataCubit, VehicleDataState>(
                        builder: (context, state) {
                          return SizedBox(
                            child: state.currentPage > 1
                                ? const Icon(
                                    Icons.check_circle,
                                    size: 18,
                                    color: ColorConsts.primaryColor,
                                  )
                                : Icon(
                                    Icons.circle_outlined,
                                    size: 18,
                                    color: ColorConsts.primaryColor
                                        .withOpacity(0.3),
                                  ),
                          );
                        },
                      ),
                    ],
                  );
                },
              ),
              const Gap(20),
              Text(
                'Vehicle data',
                style: Theme.of(context).textTheme.displaySmall,
              ),
              const Gap(10),
              Text(
                'Enter your car details',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: Colors.grey.shade700,
                    ),
              ),
              const Gap(30),
              Flexible(
                child: PageView.builder(
                  itemCount: pages.length,
                  itemBuilder: (context, index) {
                    return pages[index];
                  },
                  onPageChanged: (int pageIndex) {
                    context.read<VehicleDataCubit>().onPageChanged(pageIndex);
                  },
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
