import 'package:advice/themes/color_extensions.dart';
import 'package:flutter/material.dart';

class CircleContainerView extends StatelessWidget {
  const CircleContainerView({
    super.key,
    this.height = 44,
    this.width = 44,
    this.borderRadius = 48,
    this.borderWidth = 1,
    this.borderColor = AppColors.borderNeutralColor,
    required this.child,
  });

  final double height;
  final double width;

  final double borderRadius;
  final double borderWidth;
  final Widget child;
  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: AppColors.surfaceNeutralColorLight,
        borderRadius: BorderRadius.all(
          Radius.circular(borderRadius),
        ),
        border: Border.all(
          width: borderWidth,
          color: borderColor.withOpacity(0.5),
          style: BorderStyle.solid,
        ),
      ),
      child: Center(
        child: child,
      ),
    );
  }
}
