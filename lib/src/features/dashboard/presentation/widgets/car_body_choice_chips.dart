part of '../pages/dashboard_screen.dart';

class _CarBodyChoiceChips extends StatelessWidget {
  const _CarBodyChoiceChips();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: SizedBox(
              height: 40,
              child: BlocProvider(
                create: (context) => BodyChoiceChipCubit(),
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: List.generate(
                    Body.values.length,
                    (index) => Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child:
                          BlocBuilder<BodyChoiceChipCubit, BodyChoiceChipState>(
                        builder: (context, state) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: ChoiceChip(
                              onSelected: (isSelected) {
                                context
                                    .read<BodyChoiceChipCubit>()
                                    .onChoiceChipSelected(index);
                              },
                              selectedColor: state.selectedIndex == index
                                  ? ColorConsts.primaryColor
                                  : Colors.white,
                              side: BorderSide(
                                width: state.selectedIndex == index ? 0 : 1,
                                color: Colors.grey,
                              ),
                              label: Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 5,
                                ),
                                alignment: Alignment.center,
                                height: 30,
                                child: Text(
                                  Body.values[index].name.toUpperCase(),
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge
                                      ?.copyWith(
                                        color: state.selectedIndex == index
                                            ? Colors.white
                                            : ColorConsts.black,
                                        fontWeight: state.selectedIndex == index
                                            ? FontWeight.w800
                                            : FontWeight.w500,
                                      ),
                                ),
                              ),
                              selected: true,
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
