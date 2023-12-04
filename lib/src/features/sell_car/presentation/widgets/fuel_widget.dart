part of '../pages/sell_car_screen.dart';

class _FuelWidget extends StatefulWidget {
  const _FuelWidget({
    required this.constraints,
  });

  final BoxConstraints constraints;

  @override
  State<_FuelWidget> createState() => _FuelWidgetState();
}

class _FuelWidgetState extends State<_FuelWidget> {
  @override
  Widget build(BuildContext context) {
    return _VehiclePropertyWidget(
      constraints: widget.constraints,
      label: 'Fuel',
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: Fuel.values.length,
        itemBuilder: (context, index) {
          final fuel = Fuel.values[index];
          return Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: BlocBuilder<FuelDataCubit, FuelDataState>(
              builder: (context, state) {
                return ChoiceChip(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  selected: state.selectedIndex == index,
                  selectedColor: state.selectedIndex == index
                      ? ColorConsts.primaryColor
                      : Colors.grey,
                  label: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    height: 25,
                    alignment: Alignment.center,
                    child: Text(
                      fuel.name.splitCamelCasing(),
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            color: state.selectedIndex == index
                                ? Colors.white
                                : Colors.black,
                          ),
                    ),
                  ),
                  onSelected: (selected) {
                    context
                        .read<FuelDataCubit>()
                        .onFuelChipSelected(selectedIndex: index);
                    context.read<SellCarCubit>().onConditionInput(fuel.name);
                  },
                );
              },
            ),
          );
        },
      ),
    );
  }
}
