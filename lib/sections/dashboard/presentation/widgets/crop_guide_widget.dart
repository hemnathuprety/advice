import 'package:advice/core/constants/app_constants.dart';
import 'package:advice/core/constants/asset_constants.dart';
import 'package:advice/core/di/injection_container.dart';
import 'package:advice/core/route/route_router.gr.dart';
import 'package:advice/sections/crops/bloc/crops_bloc.dart';
import 'package:advice/themes/color_extensions.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class CropGuideWidget extends StatefulWidget {
  const CropGuideWidget({
    super.key,
  });

  @override
  State<CropGuideWidget> createState() => _CropGuideWidgetState();
}

class _CropGuideWidgetState extends State<CropGuideWidget> {
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
    return BlocProvider(
      create: (context) => getIt<CropsBloc>()..add(const CropsEvent.load()),
      child: Builder(builder: (context) {
        return Builder(builder: (context) {
          return Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Text(
                      'Crops Guide',
                      style: theme.titleMedium,
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        AutoRouter.of(context).pushNamed("/cropList");
                      },
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
              BlocBuilder<CropsBloc, CropsState>(
                builder: (context, state) {
                  if (state.isLoading) {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  return SizedBox(
                    height: 128,
                    child: ListView.separated(
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          width: 16,
                        ); // Adjust height for spacing between items
                      },
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 4),
                      itemBuilder: (context, index) {
                        return CropsItembuilder(
                            duration: duration,
                            id: state.crops[index].id.toString(),
                            forecastImage: state.crops[index].image,
                            forecast: state.crops[index].name,
                            theme: theme);
                      },
                      itemCount: state.crops.length,
                      scrollDirection: Axis.horizontal,
                    ),
                  );
                },
              ),
            ],
          );
        });
      }),
    );
  }
}

class CropsItembuilder extends StatelessWidget {
  const CropsItembuilder({
    super.key,
    required this.duration,
    required this.forecastImage,
    required this.forecast,
    required this.theme,
    required this.id,
  });

  final Duration duration;
  final forecastImage;
  final forecast;
  final TextTheme theme;
  final String id;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.navigateTo(CropDetailsRoute(
          cropId: id,
        ));
      },
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
            Image.network(
              forecastImage != null
                  ? "https://np-moald-api.rimes.int/v1/agro/media/$forecastImage"
                  : "",
              width: 52,
              height: 52,
            ),
            Flexible(
              child: Text(
                forecast,
                style: theme.titleMedium,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
