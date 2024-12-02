// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class AppLocalizations {
  AppLocalizations();

  static AppLocalizations? _current;

  static AppLocalizations get current {
    assert(_current != null,
        'No instance of AppLocalizations was loaded. Try to initialize the AppLocalizations delegate before accessing AppLocalizations.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<AppLocalizations> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = AppLocalizations();
      AppLocalizations._current = instance;

      return instance;
    });
  }

  static AppLocalizations of(BuildContext context) {
    final instance = AppLocalizations.maybeOf(context);
    assert(instance != null,
        'No instance of AppLocalizations present in the widget tree. Did you add AppLocalizations.delegate in localizationsDelegates?');
    return instance!;
  }

  static AppLocalizations? maybeOf(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  /// `Advice`
  String get title {
    return Intl.message(
      'Advice',
      name: 'title',
      desc: '',
      args: [],
    );
  }

  /// `Advice`
  String get titleFull {
    return Intl.message(
      'Advice',
      name: 'titleFull',
      desc: '',
      args: [],
    );
  }

  /// `Hello World!`
  String get helloWorld {
    return Intl.message(
      'Hello World!',
      name: 'helloWorld',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message(
      'Home',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `Dashboard`
  String get dashboard {
    return Intl.message(
      'Dashboard',
      name: 'dashboard',
      desc: '',
      args: [],
    );
  }

  /// `Road Closure`
  String get roadClosure {
    return Intl.message(
      'Road Closure',
      name: 'roadClosure',
      desc: '',
      args: [],
    );
  }

  /// `Bridge Closure`
  String get bridgeClosure {
    return Intl.message(
      'Bridge Closure',
      name: 'bridgeClosure',
      desc: '',
      args: [],
    );
  }

  /// `Alerts`
  String get alerts {
    return Intl.message(
      'Alerts',
      name: 'alerts',
      desc: '',
      args: [],
    );
  }

  /// `Notifications`
  String get notifications {
    return Intl.message(
      'Notifications',
      name: 'notifications',
      desc: '',
      args: [],
    );
  }

  /// `Setting`
  String get setting {
    return Intl.message(
      'Setting',
      name: 'setting',
      desc: '',
      args: [],
    );
  }

  /// `Sign In`
  String get signIn {
    return Intl.message(
      'Sign In',
      name: 'signIn',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Email Address`
  String get emailAddress {
    return Intl.message(
      'Email Address',
      name: 'emailAddress',
      desc: '',
      args: [],
    );
  }

  /// `Visualizations`
  String get visualizations {
    return Intl.message(
      'Visualizations',
      name: 'visualizations',
      desc: '',
      args: [],
    );
  }

  /// `Road Closure Statistics`
  String get roadClosureStatistics {
    return Intl.message(
      'Road Closure Statistics',
      name: 'roadClosureStatistics',
      desc: '',
      args: [],
    );
  }

  /// `Bridge Closure Statistics`
  String get bridgeClosureStatistics {
    return Intl.message(
      'Bridge Closure Statistics',
      name: 'bridgeClosureStatistics',
      desc: '',
      args: [],
    );
  }

  /// `Statistics`
  String get statistics {
    return Intl.message(
      'Statistics',
      name: 'statistics',
      desc: '',
      args: [],
    );
  }

  /// `Road Closure Visualizations`
  String get roadClosureVisualizations {
    return Intl.message(
      'Road Closure Visualizations',
      name: 'roadClosureVisualizations',
      desc: '',
      args: [],
    );
  }

  /// `Bridge Closure Visualizations`
  String get bridgeClosureVisualizations {
    return Intl.message(
      'Bridge Closure Visualizations',
      name: 'bridgeClosureVisualizations',
      desc: '',
      args: [],
    );
  }

  /// `History`
  String get history {
    return Intl.message(
      'History',
      name: 'history',
      desc: '',
      args: [],
    );
  }

  /// `Road Closure History`
  String get roadClosureHistory {
    return Intl.message(
      'Road Closure History',
      name: 'roadClosureHistory',
      desc: '',
      args: [],
    );
  }

  /// `Bridge Closure History`
  String get bridgeClosureHistory {
    return Intl.message(
      'Bridge Closure History',
      name: 'bridgeClosureHistory',
      desc: '',
      args: [],
    );
  }

  /// `Single Road Statistics`
  String get singleRoadStatistics {
    return Intl.message(
      'Single Road Statistics',
      name: 'singleRoadStatistics',
      desc: '',
      args: [],
    );
  }

  /// `Road-wise Comparison`
  String get roadWiseComparison {
    return Intl.message(
      'Road-wise Comparison',
      name: 'roadWiseComparison',
      desc: '',
      args: [],
    );
  }

  /// `Bridge Road-wise Comparison`
  String get bridgeRoadWiseComparison {
    return Intl.message(
      'Bridge Road-wise Comparison',
      name: 'bridgeRoadWiseComparison',
      desc: '',
      args: [],
    );
  }

  /// `Year-wise Comparison`
  String get yearWiseComparison {
    return Intl.message(
      'Year-wise Comparison',
      name: 'yearWiseComparison',
      desc: '',
      args: [],
    );
  }

  /// `Year-wise Comparison`
  String get roadYearWiseComparison {
    return Intl.message(
      'Year-wise Comparison',
      name: 'roadYearWiseComparison',
      desc: '',
      args: [],
    );
  }

  /// `Year-wise Comparison`
  String get bridgeYearWiseComparison {
    return Intl.message(
      'Year-wise Comparison',
      name: 'bridgeYearWiseComparison',
      desc: '',
      args: [],
    );
  }

  /// `Flash Flood Alert (FFGS)`
  String get flashFloodAlert {
    return Intl.message(
      'Flash Flood Alert (FFGS)',
      name: 'flashFloodAlert',
      desc: '',
      args: [],
    );
  }

  /// `Rainfall Alert (ECMWF)`
  String get rainfallAlert {
    return Intl.message(
      'Rainfall Alert (ECMWF)',
      name: 'rainfallAlert',
      desc: '',
      args: [],
    );
  }

  /// `Road & Bridge Closure Alert`
  String get roadClosureAlert {
    return Intl.message(
      'Road & Bridge Closure Alert',
      name: 'roadClosureAlert',
      desc: '',
      args: [],
    );
  }

  /// `Dark Mode`
  String get darkMode {
    return Intl.message(
      'Dark Mode',
      name: 'darkMode',
      desc: '',
      args: [],
    );
  }

  /// `Dashboard`
  String get Dashboard {
    return Intl.message(
      'Dashboard',
      name: 'Dashboard',
      desc: '',
      args: [],
    );
  }

  /// `Year`
  String get year {
    return Intl.message(
      'Year',
      name: 'year',
      desc: '',
      args: [],
    );
  }

  /// `Logout`
  String get logout {
    return Intl.message(
      'Logout',
      name: 'logout',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message(
      'Cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Avg Repair Time`
  String get avgRepairTime {
    return Intl.message(
      'Avg Repair Time',
      name: 'avgRepairTime',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Logout?`
  String get confirmLogout {
    return Intl.message(
      'Confirm Logout?',
      name: 'confirmLogout',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to log out? You will need to sign in again to access alerts advisory.`
  String get confirmLogoutBody {
    return Intl.message(
      'Are you sure you want to log out? You will need to sign in again to access alerts advisory.',
      name: 'confirmLogoutBody',
      desc: '',
      args: [],
    );
  }

  /// `{menu}`
  String menu(Object menu) {
    return Intl.message(
      '$menu',
      name: 'menu',
      desc: '',
      args: [menu],
    );
  }

  /// `Road Closure Advisory`
  String get roadClosureAdvisory {
    return Intl.message(
      'Road Closure Advisory',
      name: 'roadClosureAdvisory',
      desc: '',
      args: [],
    );
  }

  /// `Bridge Closure Advisory`
  String get bridgeClosureAdvisory {
    return Intl.message(
      'Bridge Closure Advisory',
      name: 'bridgeClosureAdvisory',
      desc: '',
      args: [],
    );
  }

  /// `Flash Flood Alert`
  String get flashFloodAlertAdvisory {
    return Intl.message(
      'Flash Flood Alert',
      name: 'flashFloodAlertAdvisory',
      desc: '',
      args: [],
    );
  }

  /// `Flash Flood`
  String get flashFlood {
    return Intl.message(
      'Flash Flood',
      name: 'flashFlood',
      desc: '',
      args: [],
    );
  }

  /// `Rainfall Alert`
  String get rainfallAlertAdvisory {
    return Intl.message(
      'Rainfall Alert',
      name: 'rainfallAlertAdvisory',
      desc: '',
      args: [],
    );
  }

  /// `Rainfall`
  String get rainfall {
    return Intl.message(
      'Rainfall',
      name: 'rainfall',
      desc: '',
      args: [],
    );
  }

  /// `Advisory History`
  String get advisoryHistory {
    return Intl.message(
      'Advisory History',
      name: 'advisoryHistory',
      desc: '',
      args: [],
    );
  }

  /// `Recently Opened Roads`
  String get recentlyOpenedRoads {
    return Intl.message(
      'Recently Opened Roads',
      name: 'recentlyOpenedRoads',
      desc: '',
      args: [],
    );
  }

  /// `Select Year`
  String get selectYear {
    return Intl.message(
      'Select Year',
      name: 'selectYear',
      desc: '',
      args: [],
    );
  }

  /// `Select Month`
  String get selectMonth {
    return Intl.message(
      'Select Month',
      name: 'selectMonth',
      desc: '',
      args: [],
    );
  }

  /// `Filter`
  String get filter {
    return Intl.message(
      'Filter',
      name: 'filter',
      desc: '',
      args: [],
    );
  }

  /// `Reset`
  String get reset {
    return Intl.message(
      'Reset',
      name: 'reset',
      desc: '',
      args: [],
    );
  }

  /// `Map`
  String get mapView {
    return Intl.message(
      'Map',
      name: 'mapView',
      desc: '',
      args: [],
    );
  }

  /// `table View`
  String get tableView {
    return Intl.message(
      'table View',
      name: 'tableView',
      desc: '',
      args: [],
    );
  }

  /// `Monthly Closer Count`
  String get monthlyCloserCount {
    return Intl.message(
      'Monthly Closer Count',
      name: 'monthlyCloserCount',
      desc: '',
      args: [],
    );
  }

  /// `Roadwise Closer Count`
  String get roadwiseCloserCount {
    return Intl.message(
      'Roadwise Closer Count',
      name: 'roadwiseCloserCount',
      desc: '',
      args: [],
    );
  }

  /// `Bridgewise Closer Count`
  String get bridgewiseCloserCount {
    return Intl.message(
      'Bridgewise Closer Count',
      name: 'bridgewiseCloserCount',
      desc: '',
      args: [],
    );
  }

  /// `Districtwise Closer Count`
  String get districtwiseCloserCount {
    return Intl.message(
      'Districtwise Closer Count',
      name: 'districtwiseCloserCount',
      desc: '',
      args: [],
    );
  }

  /// `Average Repair Time Per Month`
  String get averageRepairTimePerMonth {
    return Intl.message(
      'Average Repair Time Per Month',
      name: 'averageRepairTimePerMonth',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<AppLocalizations> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ne'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<AppLocalizations> load(Locale locale) => AppLocalizations.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
