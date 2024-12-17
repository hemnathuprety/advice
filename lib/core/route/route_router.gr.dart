// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:advice/sections/alerts/presentation/screens/alerts_page.dart'
    as _i2;
import 'package:advice/sections/crops/model/crop_detail.dart' as _i11;
import 'package:advice/sections/crops/model/crop_threat.dart' as _i12;
import 'package:advice/sections/crops/model/major_stage.dart' as _i10;
import 'package:advice/sections/crops/presentation/screens/crop_details_screen.dart'
    as _i3;
import 'package:advice/sections/crops/presentation/screens/crop_list_screen.dart'
    as _i4;
import 'package:advice/sections/crops/presentation/screens/stage_detail.dart'
    as _i7;
import 'package:advice/sections/dashboard/presentation/screens/home.dart'
    as _i5;
import 'package:advice/sections/observations/presentation/screens/add_observation_main_page.dart'
    as _i1;
import 'package:advice/sections/setting/presentation/screens/setting_screen.dart'
    as _i6;
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i9;

/// generated route for
/// [_i1.AddObservationMainPage]
class AddObservationMainRoute extends _i8.PageRouteInfo<void> {
  const AddObservationMainRoute({List<_i8.PageRouteInfo>? children})
      : super(
          AddObservationMainRoute.name,
          initialChildren: children,
        );

  static const String name = 'AddObservationMainRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i1.AddObservationMainPage();
    },
  );
}

/// generated route for
/// [_i2.AlertsPage]
class AlertsRoute extends _i8.PageRouteInfo<void> {
  const AlertsRoute({List<_i8.PageRouteInfo>? children})
      : super(
          AlertsRoute.name,
          initialChildren: children,
        );

  static const String name = 'AlertsRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i2.AlertsPage();
    },
  );
}

/// generated route for
/// [_i3.CropDetailsScreen]
class CropDetailsRoute extends _i8.PageRouteInfo<CropDetailsRouteArgs> {
  CropDetailsRoute({
    _i9.Key? key,
    required String cropId,
    List<_i8.PageRouteInfo>? children,
  }) : super(
          CropDetailsRoute.name,
          args: CropDetailsRouteArgs(
            key: key,
            cropId: cropId,
          ),
          initialChildren: children,
        );

  static const String name = 'CropDetailsRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<CropDetailsRouteArgs>();
      return _i3.CropDetailsScreen(
        key: args.key,
        cropId: args.cropId,
      );
    },
  );
}

class CropDetailsRouteArgs {
  const CropDetailsRouteArgs({
    this.key,
    required this.cropId,
  });

  final _i9.Key? key;

  final String cropId;

  @override
  String toString() {
    return 'CropDetailsRouteArgs{key: $key, cropId: $cropId}';
  }
}

/// generated route for
/// [_i4.CropListScreen]
class CropListRoute extends _i8.PageRouteInfo<void> {
  const CropListRoute({List<_i8.PageRouteInfo>? children})
      : super(
          CropListRoute.name,
          initialChildren: children,
        );

  static const String name = 'CropListRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i4.CropListScreen();
    },
  );
}

/// generated route for
/// [_i5.HomePage]
class HomeRoute extends _i8.PageRouteInfo<void> {
  const HomeRoute({List<_i8.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i5.HomePage();
    },
  );
}

/// generated route for
/// [_i6.SettingScreen]
class SettingRoute extends _i8.PageRouteInfo<SettingRouteArgs> {
  SettingRoute({
    _i9.Key? key,
    required _i9.VoidCallback onSignInClick,
    List<_i8.PageRouteInfo>? children,
  }) : super(
          SettingRoute.name,
          args: SettingRouteArgs(
            key: key,
            onSignInClick: onSignInClick,
          ),
          initialChildren: children,
        );

  static const String name = 'SettingRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SettingRouteArgs>();
      return _i6.SettingScreen(
        key: args.key,
        onSignInClick: args.onSignInClick,
      );
    },
  );
}

class SettingRouteArgs {
  const SettingRouteArgs({
    this.key,
    required this.onSignInClick,
  });

  final _i9.Key? key;

  final _i9.VoidCallback onSignInClick;

  @override
  String toString() {
    return 'SettingRouteArgs{key: $key, onSignInClick: $onSignInClick}';
  }
}

/// generated route for
/// [_i7.StageDetailScreen]
class StageDetailRoute extends _i8.PageRouteInfo<StageDetailRouteArgs> {
  StageDetailRoute({
    _i9.Key? key,
    required _i10.MajorStage majorStage,
    required List<_i11.Stage> stages,
    required List<_i12.CropThreat> cropThreats,
    List<_i8.PageRouteInfo>? children,
  }) : super(
          StageDetailRoute.name,
          args: StageDetailRouteArgs(
            key: key,
            majorStage: majorStage,
            stages: stages,
            cropThreats: cropThreats,
          ),
          initialChildren: children,
        );

  static const String name = 'StageDetailRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<StageDetailRouteArgs>();
      return _i7.StageDetailScreen(
        key: args.key,
        majorStage: args.majorStage,
        stages: args.stages,
        cropThreats: args.cropThreats,
      );
    },
  );
}

class StageDetailRouteArgs {
  const StageDetailRouteArgs({
    this.key,
    required this.majorStage,
    required this.stages,
    required this.cropThreats,
  });

  final _i9.Key? key;

  final _i10.MajorStage majorStage;

  final List<_i11.Stage> stages;

  final List<_i12.CropThreat> cropThreats;

  @override
  String toString() {
    return 'StageDetailRouteArgs{key: $key, majorStage: $majorStage, stages: $stages, cropThreats: $cropThreats}';
  }
}
