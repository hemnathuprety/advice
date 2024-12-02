import 'package:advice/core/constants/app_constants.dart';
import 'package:advice/sections/dashboard/domain/entities/starts_item.dart';
import 'package:flutter/material.dart';

class StatsCard extends StatefulWidget {
  const StatsCard({
    super.key,
    required this.aggregateStatsList,
  });

  final StatsItem aggregateStatsList;

  @override
  State<StatsCard> createState() => _StatsCardState();
}

class _StatsCardState extends State<StatsCard> {
  Duration duration = const Duration(milliseconds: 200);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return GestureDetector(
      onTap: () {},
      child: AnimatedContainer(
        duration: duration,
        padding: const EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          color: widget.aggregateStatsList.color,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [kDefaultCardShadow],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              widget.aggregateStatsList.title,
              style: theme.bodyLarge,
              textAlign: TextAlign.center,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              widget.aggregateStatsList.count,
              style: theme.bodyMedium,
              textAlign: TextAlign.center,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
