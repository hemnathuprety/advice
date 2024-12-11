import 'package:advice/core/utils/localization_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class MenuItemModel {
  MenuItemModel({
    this.route = "",
    this.title = "",
    required this.icon,
  });

  String route;

  String title;
  IconData icon;

  static List<MenuItemModel> menuItemsDashboard(
      {required BuildContext context}) {
    return [
      MenuItemModel(
        route: "home",
        title: context.loc.dashboard,
        icon: FeatherIcons.activity,
      ),
    ];
  }

  static List<MenuItemModel> menuItemsBottomNav(
      {required BuildContext context}) {
    return [
      MenuItemModel(
        route: "home",
        title: context.loc.dashboard,
        icon: FeatherIcons.home,
      ),
      MenuItemModel(
        route: "map",
        title: context.loc.mapView,
        icon: FeatherIcons.map,
      ),
      MenuItemModel(
        route: "alerts",
        title: context.loc.alerts,
        icon: FeatherIcons.alertOctagon,
      ),
      MenuItemModel(
        route: "setting",
        title: context.loc.setting,
        icon: FeatherIcons.settings,
      ),
    ];
  }
}
