import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomCloseButton extends StatelessWidget {
  const CustomCloseButton({
    super.key,
    this.onTap,
  });

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(15),
      onTap: onTap ?? () => context.pop(),
      child: SizedBox(
        height: 30,
        width: 30,
        child: Center(
          child: Icon(
            Icons.close,
            color: Theme.of(context).colorScheme.onSecondary,
          ),
        ),
      ),
    );
  }
}
