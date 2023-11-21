part of '../pages/dashboard_screen.dart';

class _DashboardSection extends StatelessWidget {
  const _DashboardSection({
    required this.sectionTitle,
    this.onViewAllPressed,
  });

  final String sectionTitle;
  final VoidCallback? onViewAllPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            sectionTitle,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          InkWell(
            onTap: onViewAllPressed,
            child: Text(
              'View All',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: ColorConsts.primaryColor,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
