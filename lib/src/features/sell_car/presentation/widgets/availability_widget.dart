part of '../pages/sell_car_screen.dart';

class _AvailabilityWidget extends StatefulWidget {
  const _AvailabilityWidget({
    required this.constraints,
  });

  final BoxConstraints constraints;

  @override
  State<_AvailabilityWidget> createState() => _AvailabilityWidgetState();
}

class _AvailabilityWidgetState extends State<_AvailabilityWidget> {
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return _VehiclePropertyWidget(
      constraints: widget.constraints,
      label: 'Condition',
      child: ListView.builder(
        addAutomaticKeepAlives: true,
        scrollDirection: Axis.horizontal,
        itemCount: Availability.values.length,
        itemBuilder: (context, index) {
          final availability = Availability.values[index];
          return Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: ChoiceChip(
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
                  availability.name.splitCamelCasing(),
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: selectedIndex == index
                            ? Colors.white
                            : Colors.black,
                      ),
                ),
              ),
              onSelected: (selected) {
                setState(() {
                  selectedIndex = selected ? index : -1;
                });
                context
                    .read<SellCarCubit>()
                    .onConditionInput(availability.name);
              },
            ),
          );
        },
      ),
    );
  }
}
