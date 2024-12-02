import 'package:flutter/material.dart';

class StatsItem {
  final int id;
  String title, count;
  final Color color;

  StatsItem({
    required this.id,
    required this.title,
    required this.count,
    required this.color,
  });
}

// For demo list of service
List<StatsItem> services = [
  StatsItem(
    id: 1,
    title: "Total Road Closures",
    count: "",
    color: const Color(0xFFe7f0ff),
  ),
  StatsItem(
    id: 2,
    title: "Average Repair Time (Estimated)",
    count: "",
    color: const Color(0xFFfef4e0),
  ),
  StatsItem(
    id: 3,
    title: "Average Repair Time (Actual)",
    count: "",
    color: const Color(0xFFe2fff6),
  ),
];
