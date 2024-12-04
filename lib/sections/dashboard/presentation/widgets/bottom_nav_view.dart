import 'package:advice/sections/dashboard/data/models/menu_item.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:advice/themes/color_extensions.dart';
import 'package:flutter/material.dart';

class BottomNavView extends StatelessWidget {
  const BottomNavView({
    super.key,
    required this.bottomNavIndex,
    required this.onMenuClick,
  });

  final int bottomNavIndex;
  final Function(int) onMenuClick;

  @override
  Widget build(BuildContext context) {
    var bottomMenuItem = MenuItemModel.menuItemsBottomNav(context: context);
    final theme = Theme.of(context).textTheme;

    return AnimatedBottomNavigationBar.builder(
      itemCount: bottomMenuItem.length,
      activeIndex: bottomNavIndex,
      gapLocation: GapLocation.center,
      height: 80,
      notchSmoothness: NotchSmoothness.softEdge,
      leftCornerRadius: 0,
      rightCornerRadius: 0,
      onTap: onMenuClick,
      tabBuilder: (int index, bool isActive) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              bottomMenuItem[index].icon,
              size: 24,
              color:
                  isActive ? AppColors.primary : AppColors.borderNeutralColor,
            ),
            SizedBox(height: 2),
            Text(
              bottomMenuItem[index].title,
              style: theme.bodySmall?.copyWith(
                color:
                    isActive ? AppColors.primary : AppColors.borderNeutralColor,
              ),
            ),
          ],
        );
      },
    );
  }
}
