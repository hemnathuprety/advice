// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:advice/sections/advisory/presentation/screens/advisory_details_screen.dart'
    as _i2;
import 'package:advice/sections/advisory/presentation/screens/advisory_list_screen.dart'
    as _i3;
import 'package:advice/sections/advisory/presentation/screens/alerts_page.dart'
    as _i4;
import 'package:advice/sections/advisory/presentation/screens/pdf_view_screen.dart'
    as _i9;
import 'package:advice/sections/crops/presentation/screens/crop_details_screen.dart'
    as _i5;
import 'package:advice/sections/crops/presentation/screens/crop_list_screen.dart'
    as _i6;
import 'package:advice/sections/dashboard/presentation/screens/home.dart'
    as _i8;
import 'package:advice/sections/forecasts/presentation/screens/forecast_details.dart'
    as _i7;
import 'package:advice/sections/observations/presentation/screens/add_observation_main_page.dart'
    as _i1;
import 'package:advice/sections/setting/presentation/screens/setting_screen.dart'
    as _i10;
import 'package:auto_route/auto_route.dart' as _i11;
import 'package:flutter/foundation.dart' as _i13;
import 'package:flutter/material.dart' as _i12;

/// generated route for
/// [_i1.AddObservationMainPage]
class AddObservationMainRoute extends _i11.PageRouteInfo<void> {
  const AddObservationMainRoute({List<_i11.PageRouteInfo>? children})
      : super(
          AddObservationMainRoute.name,
          initialChildren: children,
        );

  static const String name = 'AddObservationMainRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      return const _i1.AddObservationMainPage();
    },
  );
}

/// generated route for
/// [_i2.AdvisoryDetailsScreen]
class AdvisoryDetailsRoute extends _i11.PageRouteInfo<void> {
  const AdvisoryDetailsRoute({List<_i11.PageRouteInfo>? children})
      : super(
          AdvisoryDetailsRoute.name,
          initialChildren: children,
        );

  static const String name = 'AdvisoryDetailsRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      return const _i2.AdvisoryDetailsScreen();
    },
  );
}

/// generated route for
/// [_i3.AdvisoryListScreen]
class AdvisoryListRoute extends _i11.PageRouteInfo<void> {
  const AdvisoryListRoute({List<_i11.PageRouteInfo>? children})
      : super(
          AdvisoryListRoute.name,
          initialChildren: children,
        );

  static const String name = 'AdvisoryListRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      return const _i3.AdvisoryListScreen();
    },
  );
}

/// generated route for
/// [_i4.AlertsPage]
class AlertsRoute extends _i11.PageRouteInfo<void> {
  const AlertsRoute({List<_i11.PageRouteInfo>? children})
      : super(
          AlertsRoute.name,
          initialChildren: children,
        );

  static const String name = 'AlertsRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      return const _i4.AlertsPage();
    },
  );
}

/// generated route for
/// [_i5.CropDetailsScreen]
class CropDetailsRoute extends _i11.PageRouteInfo<CropDetailsRouteArgs> {
  CropDetailsRoute({
    _i12.Key? key,
    required String cropId,
    List<_i11.PageRouteInfo>? children,
  }) : super(
          CropDetailsRoute.name,
          args: CropDetailsRouteArgs(
            key: key,
            cropId: cropId,
          ),
          initialChildren: children,
        );

  static const String name = 'CropDetailsRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<CropDetailsRouteArgs>();
      return _i5.CropDetailsScreen(
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

  final _i12.Key? key;

  final String cropId;

  @override
  String toString() {
    return 'CropDetailsRouteArgs{key: $key, cropId: $cropId}';
  }
}

/// generated route for
/// [_i6.CropListScreen]
class CropListRoute extends _i11.PageRouteInfo<void> {
  const CropListRoute({List<_i11.PageRouteInfo>? children})
      : super(
          CropListRoute.name,
          initialChildren: children,
        );

  static const String name = 'CropListRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      return const _i6.CropListScreen();
    },
  );
}

/// generated route for
/// [_i7.ForecastDetailScreen]
class ForecastDetailRoute extends _i11.PageRouteInfo<void> {
  const ForecastDetailRoute({List<_i11.PageRouteInfo>? children})
      : super(
          ForecastDetailRoute.name,
          initialChildren: children,
        );

  static const String name = 'ForecastDetailRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      return const _i7.ForecastDetailScreen();
    },
  );
}

/// generated route for
/// [_i8.HomePage]
class HomeRoute extends _i11.PageRouteInfo<void> {
  const HomeRoute({List<_i11.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      return const _i8.HomePage();
    },
  );
}

/// generated route for
/// [_i9.PdfViewScreen]
class PdfViewRoute extends _i11.PageRouteInfo<PdfViewRouteArgs> {
  PdfViewRoute({
    _i13.Key? key,
    required String path,
    List<_i11.PageRouteInfo>? children,
  }) : super(
          PdfViewRoute.name,
          args: PdfViewRouteArgs(
            key: key,
            path: path,
          ),
          initialChildren: children,
        );

  static const String name = 'PdfViewRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<PdfViewRouteArgs>();
      return _i9.PdfViewScreen(
        key: args.key,
        path: args.path,
      );
    },
  );
}

class PdfViewRouteArgs {
  const PdfViewRouteArgs({
    this.key,
    required this.path,
  });

  final _i13.Key? key;

  final String path;

  @override
  String toString() {
    return 'PdfViewRouteArgs{key: $key, path: $path}';
  }
}

/// generated route for
/// [_i10.SettingScreen]
class SettingRoute extends _i11.PageRouteInfo<SettingRouteArgs> {
  SettingRoute({
    _i12.Key? key,
    required _i12.VoidCallback onSignInClick,
    List<_i11.PageRouteInfo>? children,
  }) : super(
          SettingRoute.name,
          args: SettingRouteArgs(
            key: key,
            onSignInClick: onSignInClick,
          ),
          initialChildren: children,
        );

  static const String name = 'SettingRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SettingRouteArgs>();
      return _i10.SettingScreen(
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

  final _i12.Key? key;

  final _i12.VoidCallback onSignInClick;

  @override
  String toString() {
    return 'SettingRouteArgs{key: $key, onSignInClick: $onSignInClick}';
  }
}
