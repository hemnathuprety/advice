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

  static List<MenuItemModel> menuItemsRoad({required BuildContext context}) {
    return [
      MenuItemModel(
        route: "roadHistory",
        title: context.loc.history,
        icon: FeatherIcons.archive,
      ),
      MenuItemModel(
        route: "roadStatistics",
        title: context.loc.statistics,
        icon: FeatherIcons.barChart2,
      ),
    ];
  }

  static List<MenuItemModel> menuItemsBridge({required BuildContext context}) {
    return [
      MenuItemModel(
        route: "bridgeHistory",
        title: context.loc.history,
        icon: FeatherIcons.archive,
      ),
      MenuItemModel(
        route: "bridgeStatistics",
        title: context.loc.statistics,
        icon: FeatherIcons.pieChart,
      ),
    ];
  }

  static List<MenuItemModel> menuItemsAlerts({required BuildContext context}) {
    return [
      MenuItemModel(
        route: "flashFloodAlert",
        title: context.loc.flashFloodAlert,
        icon: FeatherIcons.cloudRain,
      ),
      MenuItemModel(
        route: "rainfallAlert",
        title: context.loc.rainfallAlert,
        icon: FeatherIcons.droplet,
      ),
      MenuItemModel(
        route: "roadClosureAlert",
        title: context.loc.roadClosureAlert,
        icon: Icons.bus_alert,
      ),
    ];
  }

  static List<MenuItemModel> menuItemsAdvisories(
      {required BuildContext context}) {
    return [
      MenuItemModel(
        route: "roadClosureAdvisory",
        title: context.loc.roadClosureAdvisory,
        icon: FeatherIcons.alertOctagon,
      ),
      MenuItemModel(
        route: "bridgeClosureAdvisory",
        title: context.loc.bridgeClosureAdvisory,
        icon: FeatherIcons.alertTriangle,
      ),
      MenuItemModel(
        route: "flashFloodAlertAdvisory",
        title: context.loc.flashFloodAlertAdvisory,
        icon: FeatherIcons.alertCircle,
      ),
      MenuItemModel(
        route: "rainfallAlertAdvisory",
        title: context.loc.rainfallAlertAdvisory,
        icon: FeatherIcons.cloudRain,
      ),
      MenuItemModel(
        route: "advisoryHistory",
        title: context.loc.recentlyOpenedRoads,
        icon: FeatherIcons.archive,
      ),
    ];
  }

  static List<MenuItemModel> menuItems4({required BuildContext context}) {
    return [
      MenuItemModel(
        route: "darkMode",
        title: context.loc.darkMode,
        icon: Icons.auto_graph,
      ),
    ];
  }

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
