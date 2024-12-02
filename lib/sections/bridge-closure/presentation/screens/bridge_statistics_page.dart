import 'package:auto_route/auto_route.dart';
import 'package:advice/core/components/app_pie_chart.dart';
import 'package:advice/core/components/dashboard_line_chart.dart';
import 'package:advice/core/constants/app_constants.dart';
import 'package:advice/core/di/injection_container.dart';
import 'package:advice/core/utils/localization_utils.dart';
import 'package:advice/sections/bridge-closure/presentation/blocs/bridge_closer_stats_bloc.dart';
import 'package:advice/sections/dashboard/domain/entities/starts_item.dart';
import 'package:advice/sections/dashboard/domain/entities/year.dart';
import 'package:advice/core/components/dashboard_bar_chart.dart';
import 'package:advice/sections/dashboard/presentation/widgets/service_card.dart';
import 'package:advice/themes/color_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class BridgeStatisticsPage extends StatefulWidget {
  const BridgeStatisticsPage({super.key});

  @override
  State<BridgeStatisticsPage> createState() => _BridgeStatisticsPageState();
}

class _BridgeStatisticsPageState extends State<BridgeStatisticsPage> {
  final List<StatsItem> aggregateStatsList = services;
  bool aggregateStatsListSet = false;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<BridgeCloserStatsBloc>()
        ..add(GetBridgeCloserStatsEvent(year: years[0].name)),
      child: BlocConsumer<BridgeCloserStatsBloc, BridgeCloserStatsState>(
        listener: (context, state) {
          if (state is BridgeCloserStatsSuccess) {
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
          final theme = Theme.of(context).textTheme;
          return Scaffold(
            appBar: AppBar(
              backgroundColor: AppColors.primary,
              foregroundColor: AppColors.primaryTextColorLight,
              title: Text(
                context.loc.bridgeClosureStatistics,
                style: theme.titleLarge?.copyWith(
                  color: AppColors.primaryTextColorLight,
                ),
              ),
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
                          Text(
                            context.loc.year,
                            style: theme.bodyMedium,
                          ),
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
                            label: Text(
                              context.loc.year,
                              style: theme.bodyMedium,
                            ),
                            onSelected: (Year? year) {
                              context.read<BridgeCloserStatsBloc>().add(
                                    GetBridgeCloserStatsEvent(
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
                    const SizedBox(
                      height: 8,
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
                    (aggregateStatsListSet && state is BridgeCloserStatsSuccess)
                        ? AppPieChart(
                            monthWiseAvgRepairStats:
                                state.statsEntity.monthWiseStatsEntity,
                            title: context.loc.monthlyCloserCount,
                          )
                        : const SizedBox(),
                    const SizedBox(
                      height: 24,
                    ),
                    (aggregateStatsListSet && state is BridgeCloserStatsSuccess)
                        ? DashboardBarChart(
                            monthWiseStatsEntity:
                                state.statsEntity.bridgeWiseStats,
                            title: context.loc.bridgewiseCloserCount,
                          )
                        : const SizedBox(),
                    const SizedBox(
                      height: 24,
                    ),
                    (aggregateStatsListSet && state is BridgeCloserStatsSuccess)
                        ? DashboardBarChart(
                            monthWiseStatsEntity:
                                state.statsEntity.districtWiseStats,
                            title: context.loc.districtwiseCloserCount,
                          )
                        : const SizedBox(),
                    (aggregateStatsListSet && state is BridgeCloserStatsSuccess)
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
