import 'package:advice/core/misc/tile_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class BridgeCloserMapView extends StatelessWidget {
  const BridgeCloserMapView({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterMap(
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
      ],
    );
  }
}
