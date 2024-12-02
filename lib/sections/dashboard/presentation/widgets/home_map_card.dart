import 'package:advice/core/components/app_filled_button.dart';
import 'package:advice/core/constants/app_constants.dart';
import 'package:advice/core/misc/tile_providers.dart';
import 'package:advice/themes/color_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class MiniMapCard extends StatefulWidget {
  const MiniMapCard({
    super.key,
    required this.onMapPress,
  });

  final VoidCallback onMapPress;

  @override
  State<MiniMapCard> createState() => _MiniMapCardState();
}

class _MiniMapCardState extends State<MiniMapCard> {
  Duration duration = const Duration(milliseconds: 200);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return AnimatedContainer(
      duration: duration,
      margin: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        boxShadow: [kDefaultCardShadow],
      ),
      child: Stack(
        clipBehavior: Clip.hardEdge,
        fit: StackFit.expand,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Align(
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
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              gradient: LinearGradient(
                colors: [
                  AppColors.surfaceNeutralColorDark.withOpacity(0.5),
                  AppColors.primary.withOpacity(0.9),
                ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 1.8,
                  child: Text(
                    "A map view of road and bridge closures, providing visual information about the location and severity of closures.",
                    style: theme.bodyLarge?.copyWith(
                      color: AppColors.primaryTextColorLight,
                    ),
                    textAlign: TextAlign.center,
                    maxLines: 5,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                SizedBox(height: 16),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 1.8,
                  child: AppFilledButton(
                    title: "Enlarge Map",
                    onPressed:widget.onMapPress,
                    color: AppColors.primaryTextColorLight,
                    textColor: AppColors.surfaceSecondaryColor,
                    icon: FeatherIcons.maximize,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
