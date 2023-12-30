part of '../pages/sell_car_screen.dart';

class _VehicleInfoFirstPage extends StatelessWidget {
  const _VehicleInfoFirstPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return MediaQuery.removePadding(
          context: context,
          removeTop: true,
          child: ListView(
            addAutomaticKeepAlives: true,
            children: [
              BlocBuilder<SellCarCubit, SellCarState>(
                buildWhen: (previous, current) => previous.make != current.make,
                builder: (context, state) {
                  return CustomTextField(
                    textFieldkey: const Key('__car_make_text_field'),
                    isValid: state.make.displayError != null ? false : null,
                    labelText: 'Make',
                    errorText: state.make.displayError != null
                        ? 'invalid car make'
                        : null,
                    onChanged: (String makeString) =>
                        context.read<SellCarCubit>().onMakeInput(makeString),
                  );
                },
              ),
              const Gap(15),
              BlocBuilder<SellCarCubit, SellCarState>(
                buildWhen: (previous, current) =>
                    previous.model != current.model,
                builder: (context, state) {
                  return CustomTextField(
                    textFieldkey: const Key('__car_model_text_field'),
                    labelText: 'Model',
                    errorText: state.model.displayError != null
                        ? 'invalid car model'
                        : null,
                    onChanged: (modelString) =>
                        context.read<SellCarCubit>().onModelInput(modelString),
                  );
                },
              ),
              const Gap(15),
              BlocBuilder<SellCarCubit, SellCarState>(
                buildWhen: (previous, current) =>
                    previous.yearOfManufacture != current.yearOfManufacture,
                builder: (context, state) {
                  return CustomTextField(
                    keyboardType: const TextInputType.numberWithOptions(),
                    isValid: state.yearOfManufacture.displayError != null
                        ? false
                        : null,
                    textFieldkey:
                        const Key('__car_year_of_manufacture_text_field'),
                    labelText: 'Year of Manufacture',
                    errorText: state.yearOfManufacture.displayError != null
                        ? 'invalid year of manufacture'
                        : null,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                      LengthLimitingTextInputFormatter(4),
                    ],
                    onChanged: (yearOfManufactureString) => context
                        .read<SellCarCubit>()
                        .onYearOfManufactureInput(yearOfManufactureString),
                  );
                },
              ),
              const Gap(15),
              BlocBuilder<SellCarCubit, SellCarState>(
                buildWhen: (previous, current) =>
                    previous.milage != current.milage,
                builder: (context, state) {
                  return CustomTextField(
                    textFieldkey: const Key('__car_milage_text_field'),
                    labelText: 'Milage',
                    keyboardType: const TextInputType.numberWithOptions(),
                    errorText: state.yearOfManufacture.displayError != null
                        ? 'invalid milage'
                        : null,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                      LengthLimitingTextInputFormatter(4),
                    ],
                    onChanged: (milageString) => context
                        .read<SellCarCubit>()
                        .onMilageInput(milageString),
                  );
                },
              ),
              const Gap(15),
              _FuelWidget(
                constraints: constraints,
              ),
              const Gap(15),
              BlocBuilder<SellCarCubit, SellCarState>(
                buildWhen: (previous, current) =>
                    previous.numberOfCylinders != current.numberOfCylinders,
                builder: (context, state) {
                  return CustomTextField(
                    keyboardType: const TextInputType.numberWithOptions(),
                    isValid: state.numberOfCylinders.displayError != null
                        ? false
                        : null,
                    textFieldkey:
                        const Key('__car_number_of_cylinders_text_field'),
                    labelText: 'Number of Cylinders',
                    errorText: state.numberOfCylinders.displayError != null
                        ? 'invalid number of cylinders'
                        : null,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                    onChanged: (numberOfCylinersString) => context
                        .read<SellCarCubit>()
                        .onNumberOfCylindersInput(numberOfCylinersString),
                  );
                },
              ),
              const Gap(15),
              BlocBuilder<SellCarCubit, SellCarState>(
                buildWhen: (previous, current) =>
                    previous.horsePower != current.horsePower,
                builder: (context, state) {
                  return CustomTextField(
                    keyboardType: const TextInputType.numberWithOptions(),
                    isValid:
                        state.horsePower.displayError != null ? false : null,
                    textFieldkey: const Key('__car_horse_power_text_field'),
                    labelText: 'Horse Power',
                    errorText: state.horsePower.displayError != null
                        ? 'invalid horse power'
                        : null,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                    onChanged: (horsePowerString) => context
                        .read<SellCarCubit>()
                        .onHorsePowerInput(horsePowerString),
                  );
                },
              ),
              const Gap(15),
              BlocBuilder<SellCarCubit, SellCarState>(
                buildWhen: (previous, current) =>
                    previous.engineSize != current.engineSize,
                builder: (context, state) {
                  return CustomTextField(
                    keyboardType: const TextInputType.numberWithOptions(),
                    isValid:
                        state.engineSize.displayError != null ? false : null,
                    textFieldkey: const Key('__car_engine_size_text_field'),
                    labelText: 'Engine Size',
                    errorText: state.engineSize.displayError != null
                        ? 'invalid engine size'
                        : null,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                    onChanged: (engineSizeString) => context
                        .read<SellCarCubit>()
                        .onEngineSizeInput(engineSizeString),
                  );
                },
              ),
              const Gap(15),
              _TransmissionWidget(
                constraints: constraints,
              ),
              const Gap(15),
              _DriveTrainWidget(
                constraints: constraints,
              ),
              const Gap(15),
              const CustomTextField(
                textFieldkey: Key('__car_make_text_field'),
                labelText: 'Color',
              ),
              const Gap(15),
              BlocBuilder<SellCarCubit, SellCarState>(
                buildWhen: (previous, current) =>
                    previous.interiorColor != current.interiorColor,
                builder: (context, state) {
                  return CustomTextField(
                    keyboardType: const TextInputType.numberWithOptions(),
                    isValid:
                        state.interiorColor.displayError != null ? false : null,
                    textFieldkey: const Key('__car_interior_color_text_field'),
                    labelText: 'Interior Color',
                    errorText: state.interiorColor.displayError != null
                        ? 'invalid interior color'
                        : null,
                    inputFormatters: const [],
                    onChanged: (interiorColorString) => context
                        .read<SellCarCubit>()
                        .onInteriorColorInput(interiorColorString),
                  );
                },
              ),
              const Gap(15),
              _ConditionWidget(
                constraints: constraints,
              ),
              const Gap(15),
              _AvailabilityWidget(
                constraints: constraints,
              ),
              const Gap(15),
              _RegisteredWidget(
                constraints: constraints,
              ),
              const Gap(15),
              const Gap(20),
              BlocBuilder<VehicleDataCubit, VehicleDataState>(
                builder: (context, state) {
                  return SizedBox(
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: ColorConsts.primaryColor,
                      ),
                      onPressed: () =>
                          context.read<VehicleDataCubit>().nextPage(),
                      child: const Text('Submit'),
                    ),
                  );
                },
              ),
              const Gap(20),
            ],
          ),
        );
      },
    );
  }
}
