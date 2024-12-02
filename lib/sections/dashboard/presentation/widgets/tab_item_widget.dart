import 'package:advice/themes/color_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TabItemWidget extends StatelessWidget {
  const TabItemWidget({
    super.key,
    required this.title,
    required this.selected,
    required this.svgPath,
  });

  final String title;
  final bool selected;
  final String svgPath;

  @override
  Widget build(BuildContext context) {
    return Tab(
      text: title,
      iconMargin: EdgeInsets.only(bottom: 3, top: 6),
      icon: SvgPicture.asset(
        colorFilter: ColorFilter.mode(
            selected
                ? AppColors.surfaceColorDark
                : AppColors.borderNeutralColor,
            BlendMode.srcIn),
        svgPath,
      ),
    );
  }
}
