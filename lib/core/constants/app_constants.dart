import 'package:flutter/material.dart';

const kDefaultPadding = 16.0;

final kDefaultCardShadow = BoxShadow(
  offset: const Offset(0, 2),
  blurRadius: 4,
  color: Colors.black.withOpacity(0.1),
);


class CropType {
  final String value;
  final String name;

  CropType({
    required this.name,
    required this.value,
  });
}

List<String> observedCondition = [
  "Pest",
  /*"Disease",*/
  "Management Practice",
];



