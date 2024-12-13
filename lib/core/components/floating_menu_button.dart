import 'package:advice/core/components/circle_container_view.dart';
import 'package:advice/core/utils/localization_utils.dart';
import 'package:advice/themes/color_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class HomeTopMenuButton extends StatelessWidget {
  const HomeTopMenuButton({
    super.key,
    required this.selectedIndex,
    required this.menuShowingStatus,
  });

  final int selectedIndex;
  final bool menuShowingStatus;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).canvasColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(25),
        ),
      ),
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
      width: MediaQuery.of(context).size.width - 16,
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleContainerView(
            width: 40,
            height: 40,
            child: IconButton(
              onPressed: () {},
              padding: EdgeInsets.all(0),
              iconSize: 18,
              icon:  Icon(
                FeatherIcons.user,
                color: AppColors.primary,
              ),
            ),
          ),
          Expanded(
            child: Text(
              context.loc.titleFull,
              style: theme.titleLarge?.copyWith(
                color: AppColors.primary,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          CircleContainerView(
            width: 40,
            height: 40,
            child: IconButton(
              onPressed: () {
              },
              padding: EdgeInsets.all(0),
              iconSize: 18,
              icon:  Icon(
                FeatherIcons.grid,
                color: AppColors.primary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
