part of '../pages/sell_car_screen.dart';

class _RegisteredWidget extends StatefulWidget {
  const _RegisteredWidget({
    required this.constraints,
  });

  final BoxConstraints constraints;

  @override
  State<_RegisteredWidget> createState() => _RegisteredWidgetState();
}

class _RegisteredWidgetState extends State<_RegisteredWidget> {
  int selectedOption = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      width: widget.constraints.maxWidth,
      height: 130,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.grey.shade500,
        ),
      ),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Is Car Registered ?',
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: Colors.grey.shade600,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            ListTile(
              horizontalTitleGap: 0,
              minVerticalPadding: 0,
              minLeadingWidth: 0,
              contentPadding: EdgeInsets.zero,
              dense: true,
              leading: Radio(
                value: 1,
                activeColor: ColorConsts.primaryColor,
                onChanged: (value) {
                  setState(() {
                    selectedOption = value!;
                  });
                },
                groupValue: selectedOption,
              ),
              title: const Text('Yes'),
            ),
            ListTile(
              horizontalTitleGap: 0,
              minVerticalPadding: 0,
              minLeadingWidth: 0,
              contentPadding: EdgeInsets.zero,
              dense: true,
              leading: Radio(
                value: 2,
                activeColor: ColorConsts.primaryColor,
                onChanged: (value) {
                  setState(() {
                    selectedOption = value!;
                  });
                },
                groupValue: selectedOption,
              ),
              title: const Text('No'),
            ),
          ],
        ),
      ),
    );
  }
}
