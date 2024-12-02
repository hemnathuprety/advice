import 'dart:convert';

import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:advice/core/components/custom_appback_map.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_geojson/flutter_map_geojson.dart';
import 'package:intl/intl.dart';
import 'package:latlong2/latlong.dart';

@RoutePage()
class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  final MapController mapController = MapController();
  GeoJsonParser geoJsonParser = GeoJsonParser();
  List<LatLng> nepalPolygon = [];

  final Map<String, bool> _selectedOptions = {
    "Flood": false,
    "Light": false,
    "Household": false,
    'health': false,
    'FireEngine': false,
    'EvacuationCenter': false,
    'exposure': false,
    'crop': false,
    'build-up': false,
    'lighting_expsoure': false,
  };

  Map<String, dynamic> filterResult = {};

  Future<String> getFileData(String path) async {
    return await rootBundle.loadString(path);
  }

  final flashfloodParams = {
    'sld_body': "<?xml version=\"1.0\" encoding=\"UTF-8\"?>" +
        "<StyledLayerDescriptor " +
        "xmlns=\"http://www.opengis.net/sld\" " +
        "xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" " +
        "xmlns:se=\"http://www.opengis.net/se\" " +
        "xsi:schemaLocation=\"http://www.opengis.net/sld http://schemas.opengis.net/sld/1.1.0/StyledLayerDescriptor.xsd\" " +
        "version=\"1.1.0\" " +
        "xmlns:ogc=\"http://www.opengis.net/ogc\" " +
        "xmlns:xlink=\"http://www.w3.org/1999/xlink\">" +
        "<NamedLayer>" +
        "<se:Name>ffgs_risk</se:Name>" +
        "<UserStyle>" +
        "<se:Name>ffgs_risk</se:Name>" +
        "<se:FeatureTypeStyle>" +
        "<se:Rule>" +
        "<se:Name>High</se:Name>" +
        "<se:Description>" +
        "<se:Title>High</se:Title>" +
        "</se:Description>" +
        "<ogc:Filter xmlns:ogc=\"http://www.opengis.net/ogc\">" +
        "<ogc:PropertyIsEqualTo>" +
        "<ogc:PropertyName>warning_level</ogc:PropertyName>" +
        "<ogc:Literal>WARNINGS : Take Action</ogc:Literal>" +
        "</ogc:PropertyIsEqualTo>" +
        "</ogc:Filter>" +
        "<se:PolygonSymbolizer>" +
        "<se:Fill>" +
        "<se:SvgParameter name=\"fill\">#eb1a4c</se:SvgParameter>" +
        "</se:Fill>" +
        "<se:Stroke>" +
        "<se:SvgParameter name=\"stroke\">#000000</se:SvgParameter>" +
        "<se:SvgParameter name=\"stroke-width\">1</se:SvgParameter>" +
        "<se:SvgParameter name=\"stroke-linejoin\">bevel</se:SvgParameter>" +
        "</se:Stroke>" +
        "</se:PolygonSymbolizer>" +
        "</se:Rule>" +
        "<se:Rule>" +
        "<se:Name>Low</se:Name>" +
        "<se:Description>" +
        "<se:Title>Low</se:Title>" +
        "</se:Description>" +
        "<ogc:Filter xmlns:ogc=\"http://www.opengis.net/ogc\">" +
        "<ogc:PropertyIsEqualTo>" +
        "<ogc:PropertyName>warning_level</ogc:PropertyName>" +
        "<ogc:Literal>ADVISORIES : Be Aware</ogc:Literal>" +
        "</ogc:PropertyIsEqualTo>" +
        "</ogc:Filter>" +
        "<se:PolygonSymbolizer>" +
        "<se:Fill>" +
        "<se:SvgParameter name=\"fill\">#fcfc78</se:SvgParameter>" +
        "</se:Fill>" +
        "<se:Stroke>" +
        "<se:SvgParameter name=\"stroke\">#000000</se:SvgParameter>" +
        "<se:SvgParameter name=\"stroke-width\">1</se:SvgParameter>" +
        "<se:SvgParameter name=\"stroke-linejoin\">bevel</se:SvgParameter>" +
        "</se:Stroke>" +
        "</se:PolygonSymbolizer>" +
        "</se:Rule>" +
        "<se:Rule>" +
        "<se:Name>Medium</se:Name>" +
        "<se:Description>" +
        "<se:Title>Medium</se:Title>" +
        "</se:Description>" +
        "<ogc:Filter xmlns:ogc=\"http://www.opengis.net/ogc\">" +
        "<ogc:PropertyIsEqualTo>" +
        "<ogc:PropertyName>warning_level</ogc:PropertyName>" +
        "<ogc:Literal>WATCHES : Be Prepared</ogc:Literal>" +
        "</ogc:PropertyIsEqualTo>" +
        "</ogc:Filter>" +
        "<se:PolygonSymbolizer>" +
        "<se:Fill>" +
        "<se:SvgParameter name=\"fill\">#ffa500</se:SvgParameter>" +
        "</se:Fill>" +
        "<se:Stroke>" +
        "<se:SvgParameter name=\"stroke\">#000000</se:SvgParameter>" +
        "<se:SvgParameter name=\"stroke-width\">1</se:SvgParameter>" +
        "<se:SvgParameter name=\"stroke-linejoin\">bevel</se:SvgParameter>" +
        "</se:Stroke>" +
        "</se:PolygonSymbolizer>" +
        "</se:Rule>" +
        "<se:Rule>" +
        "<se:Name>No warning</se:Name>" +
        "<se:Description>" +
        "<se:Title>No warning</se:Title>" +
        "</se:Description>" +
        "<ogc:Filter xmlns:ogc=\"http://www.opengis.net/ogc\">" +
        "<ogc:PropertyIsEqualTo>" +
        "<ogc:PropertyName>warning_level</ogc:PropertyName>" +
        "<ogc:Literal>NO WARNINGS</ogc:Literal>" +
        "</ogc:PropertyIsEqualTo>" +
        "</ogc:Filter>" +
        "<se:PolygonSymbolizer>" +
        "<se:Fill>" +
        "<se:SvgParameter name=\"fill\">#43a047</se:SvgParameter>" +
        "</se:Fill>" +
        "<se:Stroke>" +
        "<se:SvgParameter name=\"stroke\">#000000</se:SvgParameter>" +
        "<se:SvgParameter name=\"stroke-opacity\">1</se:SvgParameter>" +
        "<se:SvgParameter name=\"stroke-width\">1</se:SvgParameter>" +
        "<se:SvgParameter name=\"stroke-linejoin\">bevel</se:SvgParameter>" +
        "</se:Stroke>" +
        "</se:PolygonSymbolizer>" +
        "</se:Rule>" +
        "</se:FeatureTypeStyle>" +
        "</UserStyle>" +
        "</NamedLayer>" +
        "</StyledLayerDescriptor>",
    'cql_filter':
        "forecast_date = '${DateFormat('yyyy-MM-dd').format(DateTime.now())}' AND hour='0' AND duration='3'",
  };

  final exposureParams = {
    'cql_filter':
        "forecast_date = '${DateFormat('yyyy-MM-dd').format(DateTime.now())}' AND hour='0' AND duration='3'",
    'sld_body': '''<?xml version="1.0" encoding="UTF-8"?>
<StyledLayerDescriptor xmlns="http://www.opengis.net/sld" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:se="http://www.opengis.net/se" xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.1.0/StyledLayerDescriptor.xsd" version="1.1.0" xmlns:ogc="http://www.opengis.net/ogc" xmlns:xlink="http://www.w3.org/1999/xlink"><NamedLayer><se:Name>ffgs_risk</se:Name><UserStyle><se:Name>ffgs_risk</se:Name><se:FeatureTypeStyle><se:Rule><se:Name>High</se:Name><se:Description><se:Title>High</se:Title></se:Description><ogc:Filter xmlns:ogc="http://www.opengis.net/ogc"><ogc:PropertyIsEqualTo><ogc:PropertyName>warning_level</ogc:PropertyName><ogc:Literal>WARNINGS : Take Action</ogc:Literal></ogc:PropertyIsEqualTo></ogc:Filter><se:PolygonSymbolizer><se:Fill><se:SvgParameter name="fill">#eb1a4c</se:SvgParameter></se:Fill><se:Stroke><se:SvgParameter name="stroke">#eb1a4c</se:SvgParameter><se:SvgParameter name="stroke-width">1</se:SvgParameter><se:SvgParameter name="stroke-linejoin">bevel</se:SvgParameter></se:Stroke></se:PolygonSymbolizer></se:Rule><se:Rule><se:Name>Low</se:Name><se:Description><se:Title>Low</se:Title></se:Description><ogc:Filter xmlns:ogc="http://www.opengis.net/ogc"><ogc:PropertyIsEqualTo><ogc:PropertyName>warning_level</ogc:PropertyName><ogc:Literal>ADVISORIES : Be Aware</ogc:Literal></ogc:PropertyIsEqualTo></ogc:Filter><se:PolygonSymbolizer><se:Fill><se:SvgParameter name="fill">#fcfc78</se:SvgParameter></se:Fill><se:Stroke><se:SvgParameter name="stroke">#fcfc78</se:SvgParameter><se:SvgParameter name="stroke-width">1</se:SvgParameter><se:SvgParameter name="stroke-linejoin">bevel</se:SvgParameter></se:Stroke></se:PolygonSymbolizer></se:Rule><se:Rule><se:Name>Medium</se:Name><se:Description><se:Title>Medium</se:Title></se:Description><ogc:Filter xmlns:ogc="http://www.opengis.net/ogc"><ogc:PropertyIsEqualTo><ogc:PropertyName>warning_level</ogc:PropertyName><ogc:Literal>WATCHES : Be Prepared</ogc:Literal></ogc:PropertyIsEqualTo></ogc:Filter><se:PolygonSymbolizer><se:Fill><se:SvgParameter name="fill">#ffa500</se:SvgParameter></se:Fill><se:Stroke><se:SvgParameter name="stroke">#ffa500</se:SvgParameter><se:SvgParameter name="stroke-width">1</se:SvgParameter><se:SvgParameter name="stroke-linejoin">bevel</se:SvgParameter></se:Stroke></se:PolygonSymbolizer></se:Rule><se:Rule><se:Name>No warning</se:Name><se:Description><se:Title>No warning</se:Title></se:Description><ogc:Filter xmlns:ogc="http://www.opengis.net/ogc"><ogc:PropertyIsEqualTo><ogc:PropertyName>warning_level</ogc:PropertyName><ogc:Literal>NO WARNINGS</ogc:Literal></ogc:PropertyIsEqualTo></ogc:Filter><se:PolygonSymbolizer><se:Fill><se:SvgParameter name="fill">#006d77</se:SvgParameter></se:Fill><se:Stroke><se:SvgParameter name="stroke">#006d77</se:SvgParameter><se:SvgParameter name="stroke-opacity">0</se:SvgParameter><se:SvgParameter name="stroke-width">1</se:SvgParameter><se:SvgParameter name="stroke-linejoin">bevel</se:SvgParameter></se:Stroke></se:PolygonSymbolizer></se:Rule></se:FeatureTypeStyle></UserStyle></NamedLayer></StyledLayerDescriptor>
  ''',
  };

  @override
  void initState() {
    super.initState();
    getFileData("assets/geojson/provience.json").then((value) {
      var jsonResult = json.decode(value);
      geoJsonParser.parseGeoJson(jsonResult);
    });
    loadNepalGeoJSON();
  }

  var outerPolygon = [
    LatLng(90, -180), // top-left corner of the world
    LatLng(90, 180), // top-right corner of the world
    LatLng(-90, 180), // bottom-right corner of the world
    LatLng(-90, -180) // bottom-left corner of the world
  ];

  LatLng? clickedLocation;
  List<Marker> clickedLocationMarker = [];
  ValueNotifier<List<Marker>> markersNotifier = ValueNotifier([]);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: CustomAppBackMap(
        onFilter: () async {},
        onSearch: () {},
      ),
      body: Builder(builder: (c) {
        return Stack(children: [
          FlutterMap(
            mapController: mapController,
            options: MapOptions(
              onTap: (tapPoint, point) {},
              initialCenter: LatLng(27.673799, 85.330811),
              initialZoom: 9.0,
              minZoom: 4.0,
              maxZoom: 14.0,
            ),
            children: [
              TileLayer(
                urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                subdomains: ['a', 'b', 'c'],
              ),
              ValueListenableBuilder<List<Marker>>(
                valueListenable: markersNotifier,
                builder: (context, markers, child) {
                  return MarkerLayer(
                    markers: markers, // Update markers based on the notifier
                  );
                },
              ),
              NepalClip(outerPolygon: outerPolygon, nepalPolygon: nepalPolygon),
              MarkerLayer(markers: geoJsonParser.markers),
            ],
          )
        ]);
      }),
    );
  }

  Future<void> loadNepalGeoJSON() async {
    getFileData("assets/geojson/NPL_adm0_Nepal.json").then((value) {
      var jsonResult = json.decode(value);
      List<LatLng> tempNepPolygon = [];

      for (var feature in jsonResult['features']) {
        List<dynamic> coordinates = feature['geometry']['coordinates'][0];
        List<LatLng> polygonLatLngs = [];
        for (var coord in coordinates[0]) {
          LatLng point = LatLng(coord[1], coord[0]);
          polygonLatLngs.add(point);
        }

        tempNepPolygon.addAll(polygonLatLngs);
      }
      setState(() {
        nepalPolygon = tempNepPolygon;
      });
    });
  }

  Widget hazardWidgetBuild(MapEntry<String, dynamic> item) {
    if (item.value is Map<String, dynamic>) {
      var newItem = item.value as Map<String, dynamic>;
      newItem.entries.map((item) {
        return Text(item.key);
      });
    }
    return Container();
  }
}

class Lighting extends StatelessWidget {
  const Lighting({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TileLayer(
      wmsOptions: WMSTileLayerOptions(
          baseUrl: 'https://np-satark.rimes.int/tethys-proxy?',
          layers: ['HIWAT_Extreme:gapaNapa'],
          styles: ['HIWAT_Extreme:gapaNapa_lightning_day1'],
          format: 'image/png',
          transparent: true),
      tileProvider: CachedNetworkTileProvide(),
    );
  }
}

class NepalClip extends StatelessWidget {
  const NepalClip({
    super.key,
    required this.outerPolygon,
    required this.nepalPolygon,
  });

  final List<LatLng> outerPolygon;
  final List<LatLng> nepalPolygon;

  @override
  Widget build(BuildContext context) {
    return PolygonLayer(
      polygons: [
        Polygon(
          points: outerPolygon,
          color: Colors.white.withOpacity(1),
          isFilled: true,
          // Mask with opacity
          borderStrokeWidth: 0,
          holePointsList: [nepalPolygon], // No border for outer polygon
        ),
      ],
      polygonCulling: false,
    );
  }
}

class CachedNetworkTileProvide extends TileProvider {
  @override
  ImageProvider getImage(TileCoordinates coordinates, TileLayer options) {
    return CachedNetworkImageProvider(getTileUrl(coordinates, options));
  }
}
