import 'package:advice/sections/bridge-closure/domain/entities/bridge_closer_history_entity.dart';
import 'package:advice/sections/bridge-closure/presentation/blocs/bridge_closer_history_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BridgeHistoryWidget extends StatefulWidget {
  const BridgeHistoryWidget({
    super.key,
    required this.isFilter,
    required this.data,
  });

  final bool isFilter;
  final List<BridgeCloserHistoryEntity>? data;

  @override
  State<BridgeHistoryWidget> createState() => _BridgeHistoryWidgetState();
}

class _BridgeHistoryWidgetState extends State<BridgeHistoryWidget> {
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
      context.read<BridgeCloserHistoryBloc>().add(
          const GetBridgeCloserHistoryEvent(
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
              title: Text(item?.roadName ?? "", style: theme.titleSmall),
              trailing: Text(item?.closureType ?? "", style: theme.titleSmall),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /*Text(item?.district ?? ""),*/
                  Text("Closure Reason : ${item?.closureReason ?? ""}",
                      style: theme.bodySmall),
                  Text("Start Date : ${item?.startDate ?? ""}",
                      style: theme.bodySmall),
                  Text("End Date : ${item?.endDate ?? ""}",
                      style: theme.bodySmall),
                  Text(
                      "Repair Time : Estimated - ${item?.repairEta ?? ""} | Actual - ${item?.actualRepairTime ?? ""}",
                      style: theme.bodySmall),
                ],
              ),
            ),
          );
        });
  }
}
