part of '../pages/sell_car_screen.dart';

class _ConditionWidget extends StatefulWidget {
  const _ConditionWidget({
    required this.constraints,
  });

  final BoxConstraints constraints;

  @override
  State<_ConditionWidget> createState() => _ConditionWidgetState();
}

class _ConditionWidgetState extends State<_ConditionWidget> {
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return _VehiclePropertyWidget(
      constraints: widget.constraints,
      label: 'Condition',
      child: ListView.builder(
        addAutomaticKeepAlives: true,
        scrollDirection: Axis.horizontal,
        itemCount: Condition.values.length,
        itemBuilder: (context, index) {
          final condition = Condition.values[index];
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
                  condition.name.splitCamelCasing(),
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
                context.read<SellCarCubit>().onConditionInput(condition.name);
              },
            ),
          );
        },
      ),
    );
  }
}
