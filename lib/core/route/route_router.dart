import 'package:advice/core/route/route_router.gr.dart';
import 'package:auto_route/auto_route.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(path: '/home', page: HomeRoute.page, initial: true),

        //menuItemsAlerts
        AutoRoute(path: '/repo', page: AlertsRoute.page),
        //menuItemsAdvisory,
        AutoRoute(path: '/addAdvisory', page: AddObservationMainRoute.page),
        AutoRoute(path: '/advisoryList', page: AdvisoryListRoute.page),
        AutoRoute(path: '/pdfView', page: PdfViewRoute.page),
        AutoRoute(path: '/cropList', page: CropListRoute.page),
        AutoRoute(path: '/cropDetail', page: CropDetailsRoute.page),
        AutoRoute(path: '/weatherDetail', page: ForecastDetailRoute.page),
        AutoRoute(path: '/stagedetail', page: StageDetailRoute.page),
      ];
}
