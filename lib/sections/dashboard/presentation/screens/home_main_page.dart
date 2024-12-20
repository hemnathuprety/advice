import 'dart:convert';
import 'dart:developer';

import 'package:advice/core/components/floating_menu_button.dart';
import 'package:advice/core/components/location_selection.dart';
import 'package:advice/core/utils/shared_pref_manager.dart';
import 'package:advice/sections/dashboard/presentation/blocs/dashboard_stats_bloc.dart';
import 'package:advice/sections/dashboard/presentation/widgets/active_crop_advisory.dart';
import 'package:advice/sections/dashboard/presentation/widgets/crop_guide_widget.dart';
import 'package:advice/sections/dashboard/presentation/widgets/enable_location_dialog.dart';
import 'package:advice/sections/dashboard/presentation/widgets/select_location_dialog.dart';
import 'package:advice/sections/dashboard/presentation/widgets/weather_card.dart';
import 'package:advice/sections/observations/models/locations_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:permission_handler/permission_handler.dart';

class HomeStatsView extends StatefulWidget {
  const HomeStatsView({
    super.key,
    required this.onMapPress,
    required this.onViewAllPress,
  });

  final VoidCallback onMapPress;
  final VoidCallback onViewAllPress;

  @override
  State<HomeStatsView> createState() => _HomeStatsViewState();
}

class _HomeStatsViewState extends State<HomeStatsView> {
  final GlobalKey<State<StatefulWidget>> _sheet = GlobalKey();
  final DraggableScrollableController _controller =
      DraggableScrollableController();

  final ScrollController _outerScrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _controller.addListener(_onChanged);
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      var strModel = await SharedPrefManager.instance.getUserLocation();
      if (strModel.isNotEmpty) {
        var data = jsonDecode(strModel);
        var location = LocationsModel.fromJson(data);
        log("User location $location");
        loadForecast(location);
      } else {
        enableLocation();
      }
    });
  }

  void enableLocation() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return EnableLocationDialog(
          onEnableLocation: () {
            _requestLocationPermission();
          },
          onSelectManually: onSelectManually,
        );
      },
    );
  }

  void onSelectManually() {
    showDialog(
      context: context,
      builder: (context) => SelectLocationDialog(
        onLocationSelect: (LocationsModel location) async {
          loadForecast(location);
          await SharedPrefManager.instance
              .setUserLocation(jsonEncode(location));
        },
      ),
    );
  }

  void loadForecast(LocationsModel location) {
    context.read<DashboardStatsBloc>().add(
          DashboardStatsEvent.loadForecast(location),
        );
  }

  void _onChanged() {
    final currentSize = _controller.size;
    if (currentSize <= 0.5) _collapse();
  }

  void _collapse() => _animateSheet(sheet.snapSizes?.first ?? 0);

  void _animateSheet(double size) {
    _controller.animateTo(
      size,
      duration: const Duration(milliseconds: 50),
      curve: Curves.easeInOut,
    );
  }

  Future<void> _requestLocationPermission() async {
    PermissionStatus status = await Permission.location.request();

    if (status.isGranted) {
      log("Location permission granted");

      _getCurrentPosition();
    } else if (status.isDenied || status.isPermanentlyDenied) {
      openAppSettings();
    }
  }

  Future<void> _getCurrentPosition() async {
    final LocationSettings locationSettings = LocationSettings(
      accuracy: LocationAccuracy.high,
      distanceFilter: 100,
    );
    await Geolocator.getCurrentPosition(locationSettings: locationSettings)
        .then((Position position) {
      getLocations(position);
    }).catchError((e) {
      debugPrint(e);
    });
  }

  void getLocations(Position position) {
    context.read<DashboardStatsBloc>().add(
          DashboardStatsEvent.locationDetailLoad(
            position.latitude.toString(),
            position.longitude.toString(),
          ),
        );
  }

  @override
  void dispose() {
    super.dispose();
    _outerScrollController.dispose();
    _controller.dispose();
  }

  DraggableScrollableSheet get sheet =>
      (_sheet.currentWidget as DraggableScrollableSheet);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DashboardStatsBloc, DashboardStatsState>(
      listener: (context, state) {
        if (state.locations != null && state.isLocationLoaded) {
          loadForecast(state.locations!);
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            toolbarHeight: 0,
          ),
          body: CustomScrollView(
            controller: _outerScrollController,
            slivers: [
              SliverAppBar(
                primary: true,
                pinned: false,
                centerTitle: true,
                toolbarHeight: 80,
                backgroundColor: Colors.transparent,
                surfaceTintColor: Colors.transparent,
                automaticallyImplyLeading: false,
                flexibleSpace: Column(
                  children: [
                    HomeTopMenuButton(
                      selectedIndex: 1,
                      menuShowingStatus: false,
                    ),
                  ],
                ),
              ),
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: LocationSelection(
                        location: state.locations?.municipality?.name ??
                            "Select Location",
                        onTap: onSelectManually,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    ActiveCropAdvisoryWidget(),
                    SizedBox(
                      height: 8,
                    ),
                    if (state.forecastModel != null)
                      WeatherCard(
                        forecastModel: state.forecastModel!,
                      ),
                    SizedBox(
                      height: 8,
                    ),
                    CropGuideWidget(),
                    SizedBox(
                      height: 8,
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
