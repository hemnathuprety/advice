import 'package:auto_route/auto_route.dart';
import 'package:advice/core/components/app_pie_chart.dart';
import 'package:advice/core/components/dashboard_line_chart.dart';
import 'package:advice/themes/color_extensions.dart';
import 'package:advice/core/constants/app_constants.dart';
import 'package:advice/core/di/injection_container.dart';
import 'package:advice/core/utils/localization_utils.dart';
import 'package:advice/sections/dashboard/domain/entities/starts_item.dart';
import 'package:advice/sections/dashboard/domain/entities/year.dart';
import 'package:advice/core/components/dashboard_bar_chart.dart';
import 'package:advice/sections/dashboard/presentation/widgets/service_card.dart';
import 'package:advice/sections/road-closure/presentation/blocs/road_closer_stats_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class RoadStatisticsPage extends StatefulWidget {
  const RoadStatisticsPage({super.key});

  @override
  State<RoadStatisticsPage> createState() => _RoadStatisticsPageState();
}

class _RoadStatisticsPageState extends State<RoadStatisticsPage> {
  final List<StatsItem> aggregateStatsList = services;
  bool aggregateStatsListSet = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme
        .of(context)
        .textTheme;
    return BlocProvider(
      create: (context) =>
      getIt<RoadCloserStatsBloc>()
        ..add(GetRoadCloserStatsEvent(year: years[0].name)),
      child: BlocConsumer<RoadCloserStatsBloc, RoadCloserStatsState>(
        listener: (context, state) {
          if (state is RoadCloserStatsSuccess) {
            for (StatsItem s in aggregateStatsList) {
              if (s.id == 1) {
                s.count =
                    state.statsEntity.aggregateStatsEntity?.totalClosures ?? "";
              } else if (s.id == 2) {
                s.count =
                    state.statsEntity.aggregateStatsEntity?.avgRepairEta ?? "";
              } else {
                s.count =
                    state.statsEntity.aggregateStatsEntity?.avgRepairEta ?? "";
              }
            }
            aggregateStatsListSet = true;
          }
        },
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: AppColors.primary,
              foregroundColor: AppColors.primaryTextColorLight,
              title: Text(context.loc.roadClosureStatistics,
                style: theme.titleLarge?.copyWith(
                  color: AppColors.primaryTextColorLight,
                ),),
            ),
            body: CustomScrollView(
              slivers: [
                SliverList.list(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(context.loc.year, style: theme.bodyMedium),
                          DropdownMenu<Year>(
                            menuHeight: 200,
                            initialSelection: years[0],
                            inputDecorationTheme: InputDecorationTheme(
                              isDense: true,
                              contentPadding:
                              const EdgeInsets.symmetric(horizontal: 16),
                              constraints: BoxConstraints.tight(
                                  const Size.fromHeight(40)),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            label: Text(context.loc.year, style: theme.bodySmall),
                            onSelected: (Year? year) {
                              context.read<RoadCloserStatsBloc>().add(
                                GetRoadCloserStatsEvent(
                                  year: year?.name ?? "2023",
                                ),
                              );
                            },
                            dropdownMenuEntries:
                            years.map<DropdownMenuEntry<Year>>((Year year) {
                              return DropdownMenuEntry<Year>(
                                value: year,
                                label: year.name,
                              );
                            }).toList(),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SliverGrid.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 0,
                    crossAxisSpacing: kDefaultPadding * 0.5,
                    mainAxisExtent: 140.0,
                  ),
                  itemCount: services.length,
                  itemBuilder: (BuildContext context, int index) {
                    return StatsCard(
                      aggregateStatsList: aggregateStatsList[index],
                    );
                  },
                ),
                SliverList.list(
                  children: [
                    const SizedBox(
                      height: 24,
                    ),
                    (aggregateStatsListSet && state is RoadCloserStatsSuccess)
                        ? AppPieChart(
                      monthWiseAvgRepairStats:
                      state.statsEntity.monthWiseStatsEntity,
                      title: context.loc.monthlyCloserCount,
                    )
                        : const SizedBox(),
                    const SizedBox(
                      height: 24,
                    ),
                    (aggregateStatsListSet && state is RoadCloserStatsSuccess)
                        ? DashboardBarChart(
                      monthWiseStatsEntity:
                      state.statsEntity.roadWiseStats,
                      title: context.loc.roadwiseCloserCount,
                    )
                        : const SizedBox(),
                    const SizedBox(
                      height: 24,
                    ),
                    (aggregateStatsListSet && state is RoadCloserStatsSuccess)
                        ? DashboardBarChart(
                      monthWiseStatsEntity:
                      state.statsEntity.districtWiseStats,
                      title: context.loc.districtwiseCloserCount,
                    )
                        : const SizedBox(),
                    (aggregateStatsListSet && state is RoadCloserStatsSuccess)
                        ? DashboardLineChart(
                      monthWiseAvgRepairStats:
                      state.statsEntity.monthWiseAvgRepairStats,
                      title: context.loc.averageRepairTimePerMonth,
                    )
                        : const SizedBox()
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
