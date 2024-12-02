import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_cancellable_tile_provider/flutter_map_cancellable_tile_provider.dart';

TileLayer get openStreetMapTileLayer =>
    TileLayer(
      urlTemplate: 'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
      userAgentPackageName: 'np.gov.dor.dor',
      subdomains: const ['a', 'b', 'c'],
      // Use the recommended flutter_map_cancellable_tile_provider package to
      // support the cancellation of loading tiles.
      tileProvider: CancellableNetworkTileProvider(),
    );

TileLayer get openStreetMapWMSTileLayer =>
    TileLayer(
      wmsOptions: WMSTileLayerOptions(
        baseUrl: 'https://demo.boundlessgeo.com/geoserver/ows?',
        layers: ['nasa:bluemarble'], // Layer from the WMS service
      ),
      subdomains: const ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h'],
      userAgentPackageName: 'dev.fleaflet.flutter_map.example',
    );
