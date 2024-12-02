import 'dart:developer';

import 'package:advice/core/misc/tile_providers.dart';
import 'package:advice/sections/dashboard/presentation/blocs/dashboard_stats_bloc.dart';
import 'package:advice/themes/color_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_geojson/flutter_map_geojson.dart';
import 'package:latlong2/latlong.dart';

class HomeMapWidget extends StatefulWidget {
  const HomeMapWidget({super.key});

  @override
  State<HomeMapWidget> createState() => _HomeMapWidgetState();
}

class _HomeMapWidgetState extends State<HomeMapWidget> {
  // instantiate parser, use the defaults
  GeoJsonParser geoJsonParser = GeoJsonParser(
    defaultMarkerColor: AppColors.primary,
    defaultPolygonBorderColor: AppColors.contentColorBlack,
    defaultPolygonFillColor: AppColors.primary.withOpacity(0.5),
    defaultCircleMarkerColor: AppColors.warningColor.withOpacity(0.25),
  );

  // instantiate parser, use the defaults
  GeoJsonParser geoJsonParser1 = GeoJsonParser(
    defaultMarkerColor: AppColors.warningColor,
    defaultPolygonBorderColor: AppColors.contentColorBlack,
    defaultPolygonFillColor: AppColors.primary.withOpacity(0.1),
    defaultCircleMarkerColor: AppColors.warningColor.withOpacity(0.25),
  ); // instantiate parser, use the defaults

  bool loadingData = false;

  Future<void> processData() async {
    log("processData ");
    final String geoJson =
        await rootBundle.loadString('assets/geojson/nepal.geojson');
    geoJsonParser1.parseGeoJsonAsString(geoJson);
  }

  bool myFilterFunction(Map<String, dynamic> properties) {
    if (properties['section'].toString().contains('Point M-4')) {
      return false;
    } else {
      return true;
    }
  }

  // this is callback that gets executed when user taps the marker
  void onTapMarkerFunction(Map<String, dynamic> map) {
    // ignore: avoid_print
    print('onTapMarkerFunction: $map');
  }

  @override
  void initState() {
    super.initState();

    geoJsonParser.setDefaultMarkerTapCallback(onTapMarkerFunction);
    geoJsonParser1.setDefaultMarkerTapCallback(onTapMarkerFunction);
    geoJsonParser.filterFunction = myFilterFunction;
    geoJsonParser1.filterFunction = myFilterFunction;

    loadingData = true;
    processData().then((_) {
      setState(() {
        loadingData = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: BlocListener<DashboardStatsBloc, DashboardStatsState>(
        listener: (context, state) {
          /*if (state is DashboardSuccess) {
            if (state.dashboardStatsEntity.geoJsonDataBagmati != null &&
                state.dashboardStatsEntity.geoJsonDataBagmati?.isNotEmpty ==
                    true) {
              log("geoJsonFFGSData ${state.dashboardStatsEntity.geoJsonDataBagmati?.length ?? ""}");

              loadingData = true;
              geoJsonParser
                  .parseGeoJson(state.dashboardStatsEntity.geoJsonDataBagmati!);
              setState(() {
                loadingData = false;
              });
            }
            if (state.dashboardStatsEntity.geoJsonDataMadhesh != null &&
                state.dashboardStatsEntity.geoJsonDataMadhesh?.isNotEmpty ==
                    true) {
              loadingData = true;
              geoJsonParser
                  .parseGeoJson(state.dashboardStatsEntity.geoJsonDataMadhesh!);
              setState(() {
                loadingData = false;
              });
            }
          }*/
        },
        child: Container(
          clipBehavior: Clip.hardEdge,
          height: MediaQuery.of(context).size.height * 0.55,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondary,
          ),
          child: FlutterMap(
            options: MapOptions(
              initialCenter: const LatLng(27.700769, 85.300140),
              initialZoom: 8,
              cameraConstraint: CameraConstraint.contain(
                bounds: LatLngBounds(
                  const LatLng(-90, -180),
                  const LatLng(90, 180),
                ),
              ),
            ),
            children: [
              openStreetMapTileLayer,
              loadingData
                  ? const Center(child: CircularProgressIndicator())
                  : PolygonLayer(
                      polygons: geoJsonParser1.polygons,
                    ),
              if (!loadingData)
                PolylineLayer(polylines: geoJsonParser1.polylines),
              if (!loadingData) MarkerLayer(markers: geoJsonParser1.markers),
              if (!loadingData) CircleLayer(circles: geoJsonParser1.circles),
              loadingData
                  ? const Center(child: CircularProgressIndicator())
                  : PolygonLayer(
                      polygons: geoJsonParser.polygons,
                    ),
              if (!loadingData)
                PolylineLayer(polylines: geoJsonParser.polylines),
              if (!loadingData) MarkerLayer(markers: geoJsonParser.markers),
              if (!loadingData) CircleLayer(circles: geoJsonParser.circles),
            ],
          ),
        ),
      ),
    );
  }
}
