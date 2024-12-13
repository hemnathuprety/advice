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

class CropType {
  final String value;
  final String name;

  CropType({
    required this.name,
    required this.value,
  });
}

List<CropType> cropType = [
  CropType(name: "Rice", value: "Rice"),
  CropType(name: "Wheat", value: "Wheat"),
  CropType(
    name: "Maize",
    value: "Maize",
  )
];


List<String> observedCondition = [
  "Pest",
  /*"Disease",*/
  "Management Practice",
];
List<String> waterResource = [
  "Irrigated",
  "Rainfed",
];
