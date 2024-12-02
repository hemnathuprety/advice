import 'package:advice/sections/navigation/data/models/menu_item.dart';
import 'package:advice/themes/color_extensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MenuRow extends StatelessWidget {
  const MenuRow({
    super.key,
    required this.menu,
    this.selectedMenu = "",
    this.onMenuPress,
  });

  final MenuItemModel menu;
  final String selectedMenu;
  final Function? onMenuPress;

  void onMenuPressed() {
    onMenuPress!();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Stack(
        children: [
          CupertinoButton(
            padding: const EdgeInsets.all(12),
            pressedOpacity: 1, // disable touch effect
            onPressed: onMenuPressed,
            child: Row(
              children: [
                SizedBox(
                  width: 32,
                  height: 32,
                  child: Opacity(
                    opacity: 0.6,
                    child: Icon(
                      menu.icon,
                      color: AppColors.primaryTextColor,
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Flexible(
                  child: Text(
                    menu.title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.bodyLarge,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
