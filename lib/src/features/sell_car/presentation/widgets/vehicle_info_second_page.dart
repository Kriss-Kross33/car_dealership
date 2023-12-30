part of '../pages/sell_car_screen.dart';

class _VehicleInfoSecondPage extends StatelessWidget {
  const _VehicleInfoSecondPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return MediaQuery.removePadding(
        context: context,
        removeTop: true,
        child: ListView(
          addAutomaticKeepAlives: true,
          shrinkWrap: true,
          children: [
            MediaQuery.removePadding(
              context: context,
              removeTop: true,
              child: GridView.builder(
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                ),
                itemCount: 9,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.red,
                    ),
                  );
                },
              ),
            ),
            const Gap(15),
            BlocBuilder<SellCarCubit, SellCarState>(
              buildWhen: (previous, current) => previous.seats != current.seats,
              builder: (context, state) {
                return CustomTextField(
                  keyboardType: const TextInputType.numberWithOptions(),
                  isValid: state.seats.displayError != null ? false : null,
                  textFieldkey: const Key('__car_seats_text_field'),
                  labelText: 'Seats',
                  errorText: state.seats.displayError != null
                      ? 'invalidCar seats '
                      : null,
                  inputFormatters: const [],
                  onChanged: (seatsString) =>
                      context.read<SellCarCubit>().onSeatsInput(seatsString),
                );
              },
            ),
            const Gap(15),
            BlocBuilder<SellCarCubit, SellCarState>(
              buildWhen: (previous, current) => previous.trim != current.trim,
              builder: (context, state) {
                return CustomTextField(
                  textFieldkey: const Key('__car_trim_text_field'),
                  labelText: 'Trim',
                  errorText:
                      state.model.displayError != null ? 'invalid trim' : null,
                  onChanged: (trimString) =>
                      context.read<SellCarCubit>().onTrimInput(trimString),
                );
              },
            ),
            const Gap(15),
            BlocBuilder<SellCarCubit, SellCarState>(
              buildWhen: (previous, current) => previous.price != current.price,
              builder: (context, state) {
                return CustomTextField(
                  keyboardType: const TextInputType.numberWithOptions(),
                  isValid: state.price.displayError != null ? false : null,
                  textFieldkey: const Key('__car_price_text_field'),
                  labelText: 'Price',
                  errorText:
                      state.price.displayError != null ? 'invalid price' : null,
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                  onChanged: (priceString) =>
                      context.read<SellCarCubit>().onPriceInput(priceString),
                );
              },
            ),
            const Gap(15),
            BlocBuilder<SellCarCubit, SellCarState>(
              buildWhen: (previous, current) => previous.trim != current.trim,
              builder: (context, state) {
                return CustomTextField(
                  textFieldkey: const Key('__car_trim_text_field'),
                  labelText: 'Description',
                  maxLines: 10,
                  errorText:
                      state.model.displayError != null ? 'invalid trim' : null,
                  onChanged: (trimString) =>
                      context.read<SellCarCubit>().onTrimInput(trimString),
                );
              },
            ),
            const Gap(30),
            BlocBuilder<VehicleDataCubit, VehicleDataState>(
              builder: (context, state) {
                return BlocBuilder<SellCarCubit, SellCarState>(
                  builder: (context, sellState) {
                    return SizedBox(
                      height: 50,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: ColorConsts.primaryColor,
                        ),
                        onPressed: () {
                          if (sellState.isValid) {
                            context.read<VehicleDataCubit>().nextPage();
                          }
                        },
                        child: const Text('Submit'),
                      ),
                    );
                  },
                );
              },
            ),
            const Gap(30),
          ],
        ),
      );
    });
  }
}
