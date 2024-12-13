import 'package:advice/core/components/custom_app_back_dart.dart';
import 'package:advice/core/constants/app_constants.dart';
import 'package:advice/core/constants/asset_constants.dart';
import 'package:advice/core/di/injection_container.dart';
import 'package:advice/sections/crops/bloc/crops_bloc.dart';
import 'package:advice/themes/color_extensions.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class CropListScreen extends StatefulWidget {
  const CropListScreen({super.key});

  @override
  State<CropListScreen> createState() => _CropListScreenState();
}

class _CropListScreenState extends State<CropListScreen> {
  final List<String> forecast = [
    "Rice",
    "Wheat",
    "Millet",
    "Maize",
    "Maize",
    "Maize",
    "Maize",
    "Maize"
  ];

  final List<String> forecastImage = [
    AssetConstants.crop1,
    AssetConstants.crop1,
    AssetConstants.crop1,
    AssetConstants.crop1,
    AssetConstants.crop1,
    AssetConstants.crop1,
    AssetConstants.crop1,
    AssetConstants.crop1,
  ];

  Duration duration = const Duration(milliseconds: 200);

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return BlocProvider(
      create: (context) => getIt<CropsBloc>()..add(CropsEvent.load()),
      child: Builder(builder: (context) {
        return Scaffold(
          appBar: CustomAppBackDart(
            title: "Crop List",
            showBack: true,
          ),
          body: BlocBuilder<CropsBloc, CropsState>(
            builder: (context, state) {
              if (state.isLoading) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
              return ListView.separated(
                separatorBuilder: (context, index) {
                  return SizedBox(
                    height: 16,
                  ); // Adjust height for spacing between items
                },
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {},
                    child: AnimatedContainer(
                      width: double.infinity,
                      duration: duration,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 24),
                      decoration: BoxDecoration(
                        color: AppColors.contentColorWhite,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [kDefaultCardShadow],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 60,
                            height: 60,
                            child: Image.network(
                              state.crops[index].image != null
                                  ? "https://np-moald-api.rimes.int/v1/agro/media/" +
                                      state.crops[index].image!
                                  : "",
                              width: 60,
                            ),
                          ),
                          SizedBox(
                            width: 24,
                          ),
                          Expanded(
                            child: Text(
                              state.crops![index].name ?? '',
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
                itemCount: state.crops.length,
              );
            },
          ),
        );
      }),
    );
  }
}
