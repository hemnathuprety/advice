import 'package:advice/core/components/circle_container_view.dart';
import 'package:advice/themes/color_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class CircularBackButton extends StatelessWidget {
  const CircularBackButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child: CircleContainerView(
        width: 40,
        height: 40,
        child: IconButton(
          padding: EdgeInsets.all(0),
          iconSize: 24,
          icon: Icon(
            FeatherIcons.chevronLeft,
            color: AppColors.primary,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
