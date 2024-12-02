import 'package:flutter/material.dart';

const kDefaultPadding = 16.0;

final kDefaultCardShadow = BoxShadow(
  offset: const Offset(0, 2),
  blurRadius: 4,
  color: Colors.black.withOpacity(0.1),
);

abstract class Env {
  static const development = "development";
  static const production = "production";
  static const staging = "staging";
}

class ClosureType {
  final String value;
  final String name;

  ClosureType({
    required this.name,
    required this.value,
  });
}

List<ClosureType> closureType = [
  ClosureType(name: "Close", value: "CLOSED"),
  ClosureType(name: "Open", value: "OPEN"),
  ClosureType(
    name: "Partially Open",
    value: "PARTIAL_OPEN",
  )
];
class DamageType {
  final String value;
  final String name;

  DamageType({
    required this.name,
    required this.value,
  });
}

List<DamageType> damageType = [
  DamageType(
    name: "Full Damage",
    value: "FULL_DAMAGE",
  ),
  DamageType(
    name: "Partially Damage",
    value: "PARTIAL_DAMAGE",
  ),
];

List<String> closureReason = [
  "Landslide",
  "Maintenance",
  "Accident",
  "Heavy Rainfall",
  "Other",
];
