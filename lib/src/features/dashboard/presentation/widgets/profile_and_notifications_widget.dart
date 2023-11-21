part of '../pages/dashboard_screen.dart';

class _ProfielAndNotificationWidget extends StatelessWidget {
  const _ProfielAndNotificationWidget();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const CircleAvatar(
            minRadius: 20,
            foregroundImage: AssetImage(
              AssetConsts.transBadge,
            ),
          ),
          Image.asset(
            AssetConsts.notification,
            height: 36,
            width: 36,
            fit: BoxFit.fill,
          ),
        ],
      ),
    );
  }
}
