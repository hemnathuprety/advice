import 'package:advice/themes/color_extensions.dart';
import 'package:advice/sections/navigation/data/models/menu_item.dart';
import 'package:advice/sections/navigation/presentation/widgets/menu_row.dart';
import 'package:flutter/material.dart';

class MenuButtonSection extends StatelessWidget {
  const MenuButtonSection({
    super.key,
    required this.title,
    required this.menuIcons,
    this.selectedMenu = "",
    this.onMenuPress,
  });

  final String title;
  final String selectedMenu;
  final List<MenuItemModel> menuIcons;
  final Function(MenuItemModel menu)? onMenuPress;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return ExpansionTile(
      shape: const Border(),
      iconColor: AppColors.primaryTextColor.withOpacity(0.8),
      collapsedIconColor: AppColors.primaryTextColor.withOpacity(0.8),
      title: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Text(
          title.toUpperCase(),
          style: theme.titleMedium?.copyWith(
            color: AppColors.primaryTextColor,
          ),
        ),
      ),
      children: <Widget>[
        for (final (_, menu) in menuIcons.indexed) ...[
          MenuRow(
            menu: menu,
            selectedMenu: selectedMenu,
            onMenuPress: () => onMenuPress!(menu),
          ),
        ]
      ],
    );
  }
}
