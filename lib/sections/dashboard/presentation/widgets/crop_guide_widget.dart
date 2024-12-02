import 'package:advice/core/constants/app_constants.dart';
import 'package:advice/core/constants/asset_constants.dart';
import 'package:advice/themes/color_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class CropGuideWidget extends StatelessWidget {
  CropGuideWidget({
    super.key,
  });

  final List<String> forecast = ["Rice", "Wheat", "Millet", "Maize"];
  final List<String> forecastImage = [
    AssetConstants.crop1,
    AssetConstants.crop1,
    AssetConstants.crop1,
    AssetConstants.crop1
  ];

  Duration duration = const Duration(milliseconds: 200);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Text(
                'Disaster Guide',
                style: theme.titleMedium,
              ),
            ),
            TextButton(
                onPressed: () {},
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 3.0, right: 4),
                      child: Text(
                        "View All",
                        style: theme.titleMedium?.copyWith(
                          color: AppColors.primary,
                        ),
                      ),
                    ),
                    Icon(
                      FeatherIcons.chevronRight,
                      color: AppColors.primary,
                    )
                  ],
                ))
          ],
        ),
        SizedBox(
          height: 128,
          child: ListView.separated(
            separatorBuilder: (context, index) {
              return SizedBox(
                width: 16,
              ); // Adjust height for spacing between items
            },
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {},
                child: AnimatedContainer(
                  width: 120,
                  duration: duration,
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  decoration: BoxDecoration(
                    color: AppColors.contentColorWhite,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [kDefaultCardShadow],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        forecastImage[index],
                        width: 52,
                        height: 52,
                      ),
                      Flexible(
                        child: Text(
                          forecast[index],
                          style: theme.titleMedium,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
            itemCount: 4,
            scrollDirection: Axis.horizontal,
          ),
        ),
      ],
    );
  }
}
