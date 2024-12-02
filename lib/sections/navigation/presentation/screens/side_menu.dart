import 'package:auto_route/auto_route.dart';
import 'package:advice/core/utils/dialog_utils.dart';
import 'package:advice/core/utils/localization_utils.dart';
import 'package:advice/sections/dashboard/presentation/blocs/profile_bloc.dart';
import 'package:advice/sections/navigation/data/models/menu_item.dart';
import 'package:advice/sections/navigation/presentation/widgets/auth_button_widget.dart';
import 'package:advice/sections/navigation/presentation/widgets/menu_button_section.dart';
import 'package:advice/themes/color_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({
    super.key,
    required this.onMenuClick,
    required this.onAuthButtonClick,
    required this.onCloseClick,
  });

  final VoidCallback onMenuClick;
  final VoidCallback onCloseClick;
  final VoidCallback onAuthButtonClick;

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  String _selectedMenu = "";

  late List<MenuItemModel> _homeMenuItems;
  late List<MenuItemModel> _roadMenuItems;
  late List<MenuItemModel> _bridgeMenuItems;
  late List<MenuItemModel> _alertMenuItems;
  late List<MenuItemModel> _advisoryMenuItem;

  void onMenuPress(MenuItemModel menu) {
    setState(() {
      _selectedMenu = menu.route;
      widget.onCloseClick();
      if (_selectedMenu != "home") {
        AutoRouter.of(context).pushNamed("/$_selectedMenu");
      }
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _homeMenuItems = MenuItemModel.menuItemsDashboard(context: context);
    _roadMenuItems = MenuItemModel.menuItemsRoad(context: context);
    _bridgeMenuItems = MenuItemModel.menuItemsBridge(context: context);
    _alertMenuItems = MenuItemModel.menuItemsAlerts(context: context);
    _advisoryMenuItem = MenuItemModel.menuItemsAdvisories(context: context);

    _selectedMenu = _homeMenuItems.first.route;

    final theme = Theme
        .of(context)
        .textTheme;

    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) {
        return SafeArea(
          child: Container(
            constraints: const BoxConstraints(maxWidth: 288),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor:
                        AppColors.primaryTextColor.withOpacity(0.2),
                        foregroundColor: AppColors.primary,
                        child: const Icon(Icons.person_outline),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              (state is ProfileSuccess)
                                  ? state.profileEntity.name ?? ""
                                  : "",
                              style: theme.bodyLarge,
                            ),
                            const SizedBox(height: 2),
                            Text(
                              (state is ProfileSuccess)
                                  ? state.profileEntity.email ?? ""
                                  : "",
                              style: theme.bodyMedium,
                            )
                          ],
                        ),
                      ),
                      const SizedBox(width: 8),
                      InkWell(
                        onTap: widget.onCloseClick,
                        child: CircleAvatar(
                          backgroundColor:
                          AppColors.primaryTextColor.withOpacity(0.0),
                          foregroundColor: AppColors.primaryTextColor,
                          child: const Icon(Icons.close),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        MenuButtonSection(
                          title: context.loc.home,
                          selectedMenu: _selectedMenu,
                          menuIcons: _homeMenuItems,
                          onMenuPress: onMenuPress,
                        ),
                        (state is ProfileSuccess)
                            ? MenuButtonSection(
                          title: "Advisories",
                          selectedMenu: _selectedMenu,
                          menuIcons: _advisoryMenuItem,
                          onMenuPress: onMenuPress,
                        )
                            : SizedBox(),
                        MenuButtonSection(
                          title: context.loc.roadClosure,
                          selectedMenu: _selectedMenu,
                          menuIcons: _roadMenuItems,
                          onMenuPress: onMenuPress,
                        ),
                        MenuButtonSection(
                          title: context.loc.bridgeClosure,
                          selectedMenu: _selectedMenu,
                          menuIcons: _bridgeMenuItems,
                          onMenuPress: onMenuPress,
                        ),
                        MenuButtonSection(
                          title: context.loc.alerts,
                          selectedMenu: _selectedMenu,
                          menuIcons: _alertMenuItems,
                          onMenuPress: onMenuPress,
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () async {
                    if (state is ProfileSuccess) {
                      final bool shouldLogout =
                          await DialogUtils.showLogoutDialog(context) ?? false;
                      if (shouldLogout && context.mounted) {
                        context.read<ProfileBloc>().add(const LogoutEvent());
                      }
                    } else {
                      widget.onAuthButtonClick();
                    }
                  },
                  child: AuthButtonWidget(
                    state: state,
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
