import 'package:auto_route/auto_route.dart';
import 'package:advice/core/components/app_filled_button.dart';
import 'package:advice/core/constants/view_status.dart';
import 'package:advice/core/di/injection_container.dart';
import 'package:advice/core/utils/localization_utils.dart';
import 'package:advice/sections/bridge-closure/presentation/blocs/bridge_closer_history_bloc.dart';
import 'package:advice/sections/bridge-closure/presentation/widgets/bridge_history_widget.dart';
import 'package:advice/sections/dashboard/domain/entities/month.dart';
import 'package:advice/sections/dashboard/domain/entities/year.dart';
import 'package:advice/themes/color_extensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class BridgeHistoryPage extends StatefulWidget {
  const BridgeHistoryPage({super.key});

  @override
  State<BridgeHistoryPage> createState() => _BridgeHistoryPageState();
}

class _BridgeHistoryPageState extends State<BridgeHistoryPage> {
  Year? yearSelected;
  Month? monthSelected;
  bool isFilter = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return BlocProvider(
      create: (context) => getIt<BridgeCloserHistoryBloc>()
        ..add(const GetBridgeCloserHistoryEvent(
            isFiltered: false, month: "", year: "")),
      child: BlocConsumer<BridgeCloserHistoryBloc, BridgeCloserHistoryState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: AppColors.primary,
              foregroundColor: AppColors.primaryTextColorLight,
              title: Text(
                context.loc.bridgeClosureHistory,
                style: theme.titleLarge?.copyWith(
                  color: AppColors.primaryTextColorLight,
                ),
              ),
              actions: [
                AppFilledButton(
                  onPressed: () {
                    setState(() {
                      yearSelected = null;
                      monthSelected = null;
                      isFilter = false;
                    });

                    context.read<BridgeCloserHistoryBloc>().add(
                          DataResetEvent(),
                        );
                    Future.delayed(const Duration(milliseconds: 100)).then((_) {
                      if (context.mounted) {
                        context.read<BridgeCloserHistoryBloc>().add(
                              GetBridgeCloserHistoryEvent(
                                isFiltered: false,
                                month: "",
                                year: "",
                              ),
                            );
                      }
                    });
                  },
                  title: context.loc.reset,
                )
              ],
            ),
            body: NestedScrollView(
              body: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
                child: (state.status == ViewStatus.success)
                    ? BridgeHistoryWidget(
                        isFilter: isFilter, data: state.statsEntity)
                    : SizedBox(),
              ),
              headerSliverBuilder:
                  (BuildContext context, bool innerBoxIsScrolled) {
                return <Widget>[
                  SliverList.list(children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12.0, vertical: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                context.loc.selectYear,
                                style: theme.bodyMedium,
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              DropdownMenu<Year>(
                                menuHeight: 200,
                                initialSelection: yearSelected,
                                inputDecorationTheme: InputDecorationTheme(
                                  isDense: true,
                                  contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 12,
                                  ),
                                  constraints: BoxConstraints.tight(
                                      const Size.fromHeight(40)),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                label: Text(
                                  context.loc.selectYear,
                                  style: theme.bodySmall,
                                ),
                                onSelected: (Year? year) {
                                  setState(() {
                                    yearSelected = year;
                                  });
                                },
                                dropdownMenuEntries: years
                                    .map<DropdownMenuEntry<Year>>((Year year) {
                                  return DropdownMenuEntry<Year>(
                                    value: year,
                                    label: year.name,
                                  );
                                }).toList(),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                context.loc.selectMonth,
                                style: theme.bodyMedium,
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              DropdownMenu<Month>(
                                menuHeight: 200,
                                initialSelection: monthSelected,
                                inputDecorationTheme: InputDecorationTheme(
                                  isDense: true,
                                  contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 12,
                                  ),
                                  constraints: BoxConstraints.tight(
                                      const Size.fromHeight(40)),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                label: Text(
                                  context.loc.selectMonth,
                                  style: theme.bodySmall,
                                ),
                                onSelected: (Month? month) {
                                  setState(() {
                                    monthSelected = month;
                                  });
                                },
                                dropdownMenuEntries: months
                                    .map<DropdownMenuEntry<Month>>(
                                        (Month month) {
                                  return DropdownMenuEntry<Month>(
                                    value: month,
                                    label: month.name,
                                  );
                                }).toList(),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          AppFilledButton(
                            onPressed: () {
                              if (yearSelected != null &&
                                  monthSelected != null) {
                                context.read<BridgeCloserHistoryBloc>().add(
                                      DataResetEvent(),
                                    );
                                Future.delayed(
                                        const Duration(milliseconds: 100))
                                    .then((_) {
                                  if (context.mounted) {
                                    context.read<BridgeCloserHistoryBloc>().add(
                                          GetBridgeCloserHistoryEvent(
                                            isFiltered: true,
                                            month: "${monthSelected?.id ?? ""}",
                                            year: yearSelected?.name ?? "",
                                          ),
                                        );
                                  }
                                });
                              }
                              setState(() {
                                isFilter = true;
                              });
                            },
                            title: context.loc.filter,
                          ),
                        ],
                      ),
                    ),
                  ])
                ];
              },
            ),
          );
        },
      ),
    );
  }
}
