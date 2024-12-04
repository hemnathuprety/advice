import 'package:advice/core/route/route_router.gr.dart';
import 'package:auto_route/auto_route.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(path: '/home', page: HomeRoute.page, initial: true),

        //menuItemsRoad
        AutoRoute(path: '/roadStatistics', page: RoadStatisticsRoute.page),
        AutoRoute(path: '/roadHistory', page: RoadHistoryRoute.page),
        //menuItemsBridge
        AutoRoute(path: '/bridgeStatistics', page: BridgeStatisticsRoute.page),
        AutoRoute(path: '/bridgeHistory', page: BridgeHistoryRoute.page),
        //menuItemsAlerts
        AutoRoute(path: '/alerts', page: AlertsRoute.page),
        //menuItemsAdvisory,
        AutoRoute(path: '/addAdvisory', page: AddAdvisoryMainRoute.page),
        AutoRoute(path: '/cropList', page: CropListRoute.page),
        AutoRoute(path: '/cropDetail', page: CropDetailsRoute.page),
      ];
}
