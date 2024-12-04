import 'package:advice/core/components/custom_app_back_dart.dart';
import 'package:advice/core/utils/localization_utils.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class CropDetailsScreen extends StatefulWidget {
  const CropDetailsScreen({super.key});

  @override
  State<CropDetailsScreen> createState() => _CropDetailsScreenState();
}

class _CropDetailsScreenState extends State<CropDetailsScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Scaffold(
        appBar: CustomAppBackDart(
          title: context.loc.setting,
        ),
        body: SizedBox());
  }
}
