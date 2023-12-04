part of '../pages/sell_car_screen.dart';

class _VehiclePropertyWidget extends StatelessWidget {
  const _VehiclePropertyWidget({
    required this.constraints,
    required this.label,
    required this.child,
  });

  final BoxConstraints constraints;
  final String label;

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      width: constraints.maxWidth,
      height: 90,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.grey.shade500,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text(
              label,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: Colors.grey.shade600,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 40,
            child: child,
          ),
        ],
      ),
    );
  }
}
