part of '../pages/sell_car_screen.dart';

class _TransmissionWidget extends StatefulWidget {
  const _TransmissionWidget({
    required this.constraints,
  });

  final BoxConstraints constraints;

  @override
  State<_TransmissionWidget> createState() => _TransmissionWidgetState();
}

class _TransmissionWidgetState extends State<_TransmissionWidget> {
  bool isSelected = false;
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return _VehiclePropertyWidget(
      constraints: widget.constraints,
      label: 'Transmission',
      child: ListView.builder(
        addAutomaticKeepAlives: true,
        scrollDirection: Axis.horizontal,
        itemCount: Transmission.values.length,
        itemBuilder: (context, index) {
          final transmission = Transmission.values[index];
          return Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: BlocBuilder<TransmissionDataCubit, TransmissionDataState>(
              builder: (context, state) {
                return ChoiceChip(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  selected: selectedIndex == index,
                  selectedColor: selectedIndex == index
                      ? ColorConsts.primaryColor
                      : Colors.grey,
                  label: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    height: 25,
                    alignment: Alignment.center,
                    child: Text(
                      transmission.name.splitCamelCasing(),
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            color: selectedIndex == index
                                ? Colors.white
                                : Colors.black,
                          ),
                    ),
                  ),
                  onSelected: (isSelected) {
                    setState(() {
                      selectedIndex = isSelected ? index : -1;
                    });
                    context
                        .read<SellCarCubit>()
                        .onConditionInput(transmission.name);
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
