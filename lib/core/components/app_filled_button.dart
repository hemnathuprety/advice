import 'package:advice/themes/color_extensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppFilledButton extends StatelessWidget {
  const AppFilledButton({
    super.key,
    this.color = AppColors.primary,
    this.textColor = AppColors.primaryTextColorLight,
    this.icon,
    required this.title,
    required this.onPressed,
  });

  final Color? color;
  final Color? textColor;
  final IconData? icon;
  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return CupertinoButton(
      padding: const EdgeInsets.all(8),
      color: color,
      borderRadius: const BorderRadius.all(
        Radius.circular(8),
      ),
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            overflow: TextOverflow.ellipsis,
            style: theme.titleMedium?.copyWith(
              color: textColor ?? AppColors.primaryTextColor,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          if (icon != null) const SizedBox(width: 8),
          if (icon != null)
            Icon(
              icon,
              color: textColor,
              size: 22,
            ),
        ],
      ),
    );
  }
}
