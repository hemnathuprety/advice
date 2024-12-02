import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:advice/core/di/injection_container.dart';
import 'package:advice/core/utils/dialog_utils.dart';
import 'package:advice/sections/alerts/presentation/screens/alerts_page.dart';
import 'package:advice/sections/alerts/presentation/screens/map_screen.dart';
import 'package:advice/sections/auth/presentation/blocs/login_bloc.dart';
import 'package:advice/sections/auth/presentation/screens/signin_view.dart';
import 'package:advice/sections/dashboard/presentation/blocs/dashboard_stats_bloc.dart';
import 'package:advice/sections/dashboard/presentation/blocs/profile_bloc.dart';
import 'package:advice/sections/dashboard/presentation/screens/home_main_page.dart';
import 'package:advice/sections/navigation/presentation/screens/side_menu.dart';
import 'package:advice/sections/navigation/presentation/widgets/bottom_nav_view.dart';
import 'package:advice/themes/color_extensions.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:permission_handler/permission_handler.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  static const String route = '/';

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  late bool _menuShowingStatus = false;
  late bool _showOnBoarding = false;
  late bool isLogin = false;
  late int _bottomNavIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  void _onMenuPress() {
    log("onMenuPress");
    if (_menuShowingStatus) {
      _scaffoldKey.currentState?.closeDrawer();
    } else {
      _scaffoldKey.currentState?.openDrawer();
    }
  }

  void _presentOnBoarding(bool show) {
    if (_menuShowingStatus) _onMenuPress();
    if (show) {
      setState(() {
        _showOnBoarding = true;
      });
    } else {
      setState(() {
        _showOnBoarding = false;
      });
    }
  }

  void requestStoragePermission() async {
    // Check if the platform is not web, as web has no permissions
    if (!kIsWeb) {
      // Request storage permission
      var status = await Permission.storage.status;
      if (!status.isGranted) {
        await Permission.storage.request();
        await Permission.photos.request();
      }
      var statusPhotos = await Permission.photos.status;
      if (!statusPhotos.isGranted) {
        await Permission.photos.request();
      }

      // Request camera permission
      var cameraStatus = await Permission.camera.status;
      log("cameraStatus ${cameraStatus.isPermanentlyDenied}");
      if (!cameraStatus.isGranted) {
        var result = await Permission.camera.request();
        if (result.isGranted) {
          onAdvisoryButtonPressed();
        } else {
          openAppSettings(); // Direct user to app settings if permission is permanently denied.
        }
      } else if (cameraStatus.isGranted && context.mounted) {
        onAdvisoryButtonPressed();
      } else if (cameraStatus.isPermanentlyDenied) {
        openAppSettings(); // Direct user to app settings if permission is permanently denied.
      }
    }
  }

  void onAdvisoryButtonPressed() {
    if (isLogin) {
      if (context.mounted) {
        AutoRouter.of(context).pushNamed("/addAdvisory");
      }
    } else {
      DialogUtils.showCustomAppDialog(
        context,
        "Login Required",
        "Please log in to access this feature.",
        "Login",
        (result) {
          if (result) {
            _presentOnBoarding(true);
          }
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> widgetOptions = <Widget>[
      HomeStatsView(
        onMenuPress: _onMenuPress,
        onMapPress: () {
          setState(() {
            _bottomNavIndex = 1;
          });
        },
        onViewAllPress: () {
          setState(() {
            _bottomNavIndex = 2;
          });
        },
      ),
      MapScreen(),
      AlertsPage(),
      AlertsPage(),
    ];

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<LoginBloc>(),
        ),
        BlocProvider(
          create: (context) =>
              getIt<ProfileBloc>()..add(const GetProfileEvent()),
        ),
        BlocProvider(
          create: (context) => getIt<DashboardStatsBloc>()
            ..add(const GetDashboardAlertsEvent(page: "1")),
        ),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<LoginBloc, LoginState>(
            listener: (context, state) {
              if (state is LoginSuccess) {
                context.read<ProfileBloc>().add(const GetProfileEvent());
                _presentOnBoarding(false);
              }
            },
          ),
          BlocListener<ProfileBloc, ProfileState>(
            listener: (context, state) {
              if (state is ProfileSuccess) {
                setState(() {
                  isLogin = true;
                });
              } else {
                setState(() {
                  isLogin = false;
                });
              }
            },
          ),
        ],
        child: Stack(
          children: [
            Scaffold(
              key: _scaffoldKey,
              extendBody: true,
              onDrawerChanged: (bool value) {
                setState(() {
                  _menuShowingStatus = !_menuShowingStatus;
                });
              },
              body: widgetOptions.elementAt(_bottomNavIndex),
              drawer: Drawer(
                child: SideMenu(
                  onMenuClick: _onMenuPress,
                  onCloseClick: _onMenuPress,
                  onAuthButtonClick: () => _presentOnBoarding(true),
                ),
              ),
              floatingActionButton: FloatingActionButton(
                onPressed: () {
                  requestStoragePermission();
                },
                backgroundColor: AppColors.primary,
                foregroundColor: AppColors.primaryTextColorLight,
                shape: CircleBorder(),
                child: const Icon(FeatherIcons.camera),
                //params
              ),
              floatingActionButtonLocation:
                  FloatingActionButtonLocation.centerDocked,
              bottomNavigationBar: BottomNavView(
                bottomNavIndex: _bottomNavIndex,
                onMenuClick: (index) => setState(() => _bottomNavIndex = index),
              ),
            ),
            if (_showOnBoarding)
              Scaffold(
                backgroundColor: AppColors.borderNeutralColor.withOpacity(0.8),
                body: SignInView(
                  closeModal: () {
                    _presentOnBoarding(false);
                  },
                ),
              ),
          ],
        ),
      ),
    );
  }
}
