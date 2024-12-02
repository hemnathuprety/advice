import 'package:advice/sections/road-closure/domain/entities/road_closer_history_entity.dart';
import 'package:advice/sections/road-closure/presentation/blocs/road_closer_history_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RoadHistoryWidget extends StatefulWidget {
  const RoadHistoryWidget({
    super.key,
    required this.isFilter,
    required this.data,
  });

  final bool isFilter;
  final List<RoadCloserHistoryEntity>? data;

  @override
  State<RoadHistoryWidget> createState() => _RoadHistoryWidgetState();
}

class _RoadHistoryWidgetState extends State<RoadHistoryWidget> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController
      ..removeListener(_onScroll)
      ..dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_isBottom && !widget.isFilter) {
      context.read<RoadCloserHistoryBloc>().add(const GetRoadCloserHistoryEvent(
          isFiltered: false, month: "", year: ""));
    }
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll * 0.9);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return ListView.builder(
        controller: _scrollController,
        itemCount: widget.data?.length ?? 0,
        itemBuilder: (_, int index) {
          final item = widget.data?[index];
          return Card(
            child: ListTile(
              title: Text("${item?.roadRefno ?? ""} - ${item?.roadName ?? ""}",
                  style: theme.titleSmall),
              trailing: Text(item?.closureType ?? "", style: theme.titleSmall),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(item?.district ?? "", style: theme.bodySmall),
                  Text("Closure Reason : ${item?.closureReason ?? ""}",
                      style: theme.bodySmall),
                  Text("Start Date : ${item?.dateRoadblockStart ?? ""}",
                      style: theme.bodySmall),
                  Text("End Date : ${item?.dateRoadblockEnd ?? ""}",
                      style: theme.bodySmall),
                  Text(
                      "Repair Time : Estimated - ${item?.repairEta ?? ""} | Actual - ${item?.actualRepairTime ?? ""}",
                      style: theme.bodySmall),
                  Text("Contact Person : ${item?.contactPerson ?? ""}",
                      style: theme.bodySmall),
                ],
              ),
            ),
          );
        });
  }
}
