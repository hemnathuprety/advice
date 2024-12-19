import 'package:advice/core/constants/app_constants.dart';
import 'package:advice/core/di/injection_container.dart';
import 'package:advice/core/route/route_router.gr.dart';
import 'package:advice/sections/advisory/models/advisory_model.dart';
import 'package:advice/sections/advisory/presentation/blocs/advisory_list_bloc.dart';
import 'package:advice/themes/color_extensions.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class ActiveCropAdvisoryWidget extends StatefulWidget {
  const ActiveCropAdvisoryWidget({
    super.key,
  });

  @override
  State<ActiveCropAdvisoryWidget> createState() =>
      _ActiveCropAdvisoryWidgetState();
}

class _ActiveCropAdvisoryWidgetState extends State<ActiveCropAdvisoryWidget> {
  Duration duration = const Duration(milliseconds: 200);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return BlocProvider(
      create: (context) =>
          getIt<AdvisoryListBloc>()..add(const AdvisoryListEvent.load()),
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
                      'Active Crop Advisory',
                      style: theme.titleMedium,
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        AutoRouter.of(context).pushNamed("/advisoryList");
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
              BlocBuilder<AdvisoryListBloc, AdvisoryListState>(
                builder: (context, state) {
                  if (state.isLoading) {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  return SizedBox(
                    height: 180,
                    child: ListView.separated(
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          width: 16,
                        ); // Adjust height for spacing between items
                      },
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 4),
                      itemBuilder: (context, index) {
                        return AdvisoryItemBuilder(
                          data: AdvisoryModel(
                            crop: Crop(name: 'Rice'),
                            observationSummary:
                                'Some Description will go here to enlighten the user about this map.',
                            color: 'Critical',
                            advisoryStartDate: 'Jan 08 2024',
                            pdf:
                                "https://np-moald-api.rimes.int/v1/agro/media/advisory_dhanusha_25_10_2024.pdf",
                          ),
                        );
                      },
                      itemCount: state.advisoryList.length,
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

class AdvisoryItemBuilder extends StatelessWidget {
  const AdvisoryItemBuilder({
    super.key,
    required this.data,
    this.height,
    this.width = 300.0,
  });

  final AdvisoryModel data;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    Duration duration = const Duration(milliseconds: 200);
    final theme = Theme.of(context).textTheme;
    return AnimatedContainer(
      width: width,
      height: height,
      duration: duration,
      padding: const EdgeInsets.only(top: 8, left: 16),
      decoration: BoxDecoration(
        color: AppColors.contentColorWhite,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [kDefaultCardShadow],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title and Status Badge
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                data.crop?.name ?? "",
                style: theme.bodyLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 8),
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: data.color == 'Critical'
                      ? Colors.red[100]
                      : Colors.green[100],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  data.color ?? "",
                  style: theme.bodySmall?.copyWith(
                    color: data.color == 'Critical' ? Colors.red : Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 8),
          // Description
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Text(
              data.observationSummary ?? "",
              style: theme.bodyMedium?.copyWith(
                color: Colors.grey[700],
              ),
            ),
          ),
          Spacer(),
          // Date and View PDF Button
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Icon(Icons.calendar_today, size: 14, color: Colors.grey[600]),
                  SizedBox(width: 4),
                  Text(
                    data.advisoryStartDate ?? "",
                    style: theme.bodySmall?.copyWith(
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
              InkWell(
                onTap: () {
                  if (data.pdf != null) {
                    context.pushRoute(PdfViewRoute(path: data.pdf ?? ""));
                  }
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  decoration: BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(8),
                      topLeft: Radius.circular(8),
                    ),
                  ),
                  child: Text(
                    'View Pdf',
                    style: theme.bodySmall?.copyWith(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
