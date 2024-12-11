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

  /// `Advices`
  String get titleFull {
    return Intl.message(
      'Advices',
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

  /// `Preferences`
  String get preferences {
    return Intl.message(
      'Preferences',
      name: 'preferences',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get language {
    return Intl.message(
      'Language',
      name: 'language',
      desc: '',
      args: [],
    );
  }

  /// `Notification Settings`
  String get notificationSettings {
    return Intl.message(
      'Notification Settings',
      name: 'notificationSettings',
      desc: '',
      args: [],
    );
  }

  /// `Support & Legal`
  String get supportLegal {
    return Intl.message(
      'Support & Legal',
      name: 'supportLegal',
      desc: '',
      args: [],
    );
  }

  /// `FAQs`
  String get FAQs {
    return Intl.message(
      'FAQs',
      name: 'FAQs',
      desc: '',
      args: [],
    );
  }

  /// `Emergency Contacts`
  String get emergencyContacts {
    return Intl.message(
      'Emergency Contacts',
      name: 'emergencyContacts',
      desc: '',
      args: [],
    );
  }

  /// `About Us`
  String get aboutUs {
    return Intl.message(
      'About Us',
      name: 'aboutUs',
      desc: '',
      args: [],
    );
  }

  /// `Privacy Policy`
  String get privacyPolicy {
    return Intl.message(
      'Privacy Policy',
      name: 'privacyPolicy',
      desc: '',
      args: [],
    );
  }

  /// `Terms & Conditions`
  String get termsConditions {
    return Intl.message(
      'Terms & Conditions',
      name: 'termsConditions',
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

  /// `FFGS\nForecast`
  String get FFGSForecast {
    return Intl.message(
      'FFGS\nForecast',
      name: 'FFGSForecast',
      desc: '',
      args: [],
    );
  }

  /// `FFGS Forecast`
  String get FFGSForecast1 {
    return Intl.message(
      'FFGS Forecast',
      name: 'FFGSForecast1',
      desc: '',
      args: [],
    );
  }

  /// `ECMWF\nForecast`
  String get ECMWFForecast {
    return Intl.message(
      'ECMWF\nForecast',
      name: 'ECMWFForecast',
      desc: '',
      args: [],
    );
  }

  /// `ECMWF Forecast`
  String get ECMWFForecast1 {
    return Intl.message(
      'ECMWF Forecast',
      name: 'ECMWFForecast1',
      desc: '',
      args: [],
    );
  }

  /// `Please log in to access this feature.`
  String get loginRequestBody {
    return Intl.message(
      'Please log in to access this feature.',
      name: 'loginRequestBody',
      desc: '',
      args: [],
    );
  }

  /// `Login Required`
  String get loginRequestTitle {
    return Intl.message(
      'Login Required',
      name: 'loginRequestTitle',
      desc: '',
      args: [],
    );
  }

  /// `Closure Reason`
  String get closureReason {
    return Intl.message(
      'Closure Reason',
      name: 'closureReason',
      desc: '',
      args: [],
    );
  }

  /// `Start Date`
  String get startDate {
    return Intl.message(
      'Start Date',
      name: 'startDate',
      desc: '',
      args: [],
    );
  }

  /// `End Date`
  String get endDate {
    return Intl.message(
      'End Date',
      name: 'endDate',
      desc: '',
      args: [],
    );
  }

  /// `Repair Time`
  String get repairTime {
    return Intl.message(
      'Repair Time',
      name: 'repairTime',
      desc: '',
      args: [],
    );
  }

  /// `Estimated`
  String get estimated {
    return Intl.message(
      'Estimated',
      name: 'estimated',
      desc: '',
      args: [],
    );
  }

  /// `Actual`
  String get actual {
    return Intl.message(
      'Actual',
      name: 'actual',
      desc: '',
      args: [],
    );
  }

  /// `Contact Person`
  String get contactPerson {
    return Intl.message(
      'Contact Person',
      name: 'contactPerson',
      desc: '',
      args: [],
    );
  }

  /// `View All`
  String get viewAll {
    return Intl.message(
      'View All',
      name: 'viewAll',
      desc: '',
      args: [],
    );
  }

  /// `A map view of road and bridge closures, providing visual information about the location and severity of closures.`
  String get enlargeMapDesc {
    return Intl.message(
      'A map view of road and bridge closures, providing visual information about the location and severity of closures.',
      name: 'enlargeMapDesc',
      desc: '',
      args: [],
    );
  }

  /// `Enlarge Map`
  String get enlargeMap {
    return Intl.message(
      'Enlarge Map',
      name: 'enlargeMap',
      desc: '',
      args: [],
    );
  }

  /// `Capture Images`
  String get captureImages {
    return Intl.message(
      'Capture Images',
      name: 'captureImages',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get next {
    return Intl.message(
      'Next',
      name: 'next',
      desc: '',
      args: [],
    );
  }

  /// `Submission Successful`
  String get submissionSuccessful {
    return Intl.message(
      'Submission Successful',
      name: 'submissionSuccessful',
      desc: '',
      args: [],
    );
  }

  /// `Your information has been submitted successfully! Thank you for completing the form.`
  String get submissionSuccessfulDesc {
    return Intl.message(
      'Your information has been submitted successfully! Thank you for completing the form.',
      name: 'submissionSuccessfulDesc',
      desc: '',
      args: [],
    );
  }

  /// `Ok`
  String get ok {
    return Intl.message(
      'Ok',
      name: 'ok',
      desc: '',
      args: [],
    );
  }

  /// `Submission Failed`
  String get submissionFailed {
    return Intl.message(
      'Submission Failed',
      name: 'submissionFailed',
      desc: '',
      args: [],
    );
  }

  /// `There was an error processing your request. Please try again later.`
  String get submissionFailedDesc {
    return Intl.message(
      'There was an error processing your request. Please try again later.',
      name: 'submissionFailedDesc',
      desc: '',
      args: [],
    );
  }

  /// `Add Road Closure Advisory`
  String get addRoadClosureAdvisory {
    return Intl.message(
      'Add Road Closure Advisory',
      name: 'addRoadClosureAdvisory',
      desc: '',
      args: [],
    );
  }

  /// `Add Bridge Closure Advisory`
  String get addBridgeClosureAdvisory {
    return Intl.message(
      'Add Bridge Closure Advisory',
      name: 'addBridgeClosureAdvisory',
      desc: '',
      args: [],
    );
  }

  /// `Division`
  String get division {
    return Intl.message(
      'Division',
      name: 'division',
      desc: '',
      args: [],
    );
  }

  /// `Select Division`
  String get selectDivision {
    return Intl.message(
      'Select Division',
      name: 'selectDivision',
      desc: '',
      args: [],
    );
  }

  /// `Road`
  String get road {
    return Intl.message(
      'Road',
      name: 'road',
      desc: '',
      args: [],
    );
  }

  /// `Select Road`
  String get selectRoad {
    return Intl.message(
      'Select Road',
      name: 'selectRoad',
      desc: '',
      args: [],
    );
  }

  /// `Road Link`
  String get roadLink {
    return Intl.message(
      'Road Link',
      name: 'roadLink',
      desc: '',
      args: [],
    );
  }

  /// `Select Road Link`
  String get selectRoadLink {
    return Intl.message(
      'Select Road Link',
      name: 'selectRoadLink',
      desc: '',
      args: [],
    );
  }

  /// `Enter Chainage`
  String get enterChainage {
    return Intl.message(
      'Enter Chainage',
      name: 'enterChainage',
      desc: '',
      args: [],
    );
  }

  /// `Chainage`
  String get chainage {
    return Intl.message(
      'Chainage',
      name: 'chainage',
      desc: '',
      args: [],
    );
  }

  /// `District`
  String get district {
    return Intl.message(
      'District',
      name: 'district',
      desc: '',
      args: [],
    );
  }

  /// `Select District`
  String get selectDistrict {
    return Intl.message(
      'Select District',
      name: 'selectDistrict',
      desc: '',
      args: [],
    );
  }

  /// `Enter Bridge Name`
  String get enterBridgeName {
    return Intl.message(
      'Enter Bridge Name',
      name: 'enterBridgeName',
      desc: '',
      args: [],
    );
  }

  /// `Bridge Name`
  String get bridgeName {
    return Intl.message(
      'Bridge Name',
      name: 'bridgeName',
      desc: '',
      args: [],
    );
  }

  /// `Select Closure Start Date`
  String get selectClosureStartDate {
    return Intl.message(
      'Select Closure Start Date',
      name: 'selectClosureStartDate',
      desc: '',
      args: [],
    );
  }

  /// `Select Closure End Date`
  String get selectClosureEndDate {
    return Intl.message(
      'Select Closure End Date',
      name: 'selectClosureEndDate',
      desc: '',
      args: [],
    );
  }

  /// `Closed Date`
  String get closedDate {
    return Intl.message(
      'Closed Date',
      name: 'closedDate',
      desc: '',
      args: [],
    );
  }

  /// `Closure Start Date`
  String get closureStartDate {
    return Intl.message(
      'Closure Start Date',
      name: 'closureStartDate',
      desc: '',
      args: [],
    );
  }

  /// `Closure End Date`
  String get closureEndDate {
    return Intl.message(
      'Closure End Date',
      name: 'closureEndDate',
      desc: '',
      args: [],
    );
  }

  /// `Closure Type`
  String get closureType {
    return Intl.message(
      'Closure Type',
      name: 'closureType',
      desc: '',
      args: [],
    );
  }

  /// `Select Closure Type`
  String get selectClosureType {
    return Intl.message(
      'Select Closure Type',
      name: 'selectClosureType',
      desc: '',
      args: [],
    );
  }

  /// `Damage Type`
  String get damageType {
    return Intl.message(
      'Damage Type',
      name: 'damageType',
      desc: '',
      args: [],
    );
  }

  /// `Select Damage Type`
  String get selectDamageType {
    return Intl.message(
      'Select Damage Type',
      name: 'selectDamageType',
      desc: '',
      args: [],
    );
  }

  /// `Select Closure Reason`
  String get selectClosureReason {
    return Intl.message(
      'Select Closure Reason',
      name: 'selectClosureReason',
      desc: '',
      args: [],
    );
  }

  /// `Enter Location`
  String get enterLocation {
    return Intl.message(
      'Enter Location',
      name: 'enterLocation',
      desc: '',
      args: [],
    );
  }

  /// `Location`
  String get location {
    return Intl.message(
      'Location',
      name: 'location',
      desc: '',
      args: [],
    );
  }

  /// `Enter Contact Person Number`
  String get enterContactPersonNumber {
    return Intl.message(
      'Enter Contact Person Number',
      name: 'enterContactPersonNumber',
      desc: '',
      args: [],
    );
  }

  /// `Enter Remarks`
  String get enterRemarks {
    return Intl.message(
      'Enter Remarks',
      name: 'enterRemarks',
      desc: '',
      args: [],
    );
  }

  /// `Remarks`
  String get remarks {
    return Intl.message(
      'Remarks',
      name: 'remarks',
      desc: '',
      args: [],
    );
  }

  /// `Reason for Closure`
  String get reasonForClosure {
    return Intl.message(
      'Reason for Closure',
      name: 'reasonForClosure',
      desc: '',
      args: [],
    );
  }

  /// `Enter Reason for Closure`
  String get enterReasonForClosure {
    return Intl.message(
      'Enter Reason for Closure',
      name: 'enterReasonForClosure',
      desc: '',
      args: [],
    );
  }

  /// `Upload Images`
  String get uploadImages {
    return Intl.message(
      'Upload Images',
      name: 'uploadImages',
      desc: '',
      args: [],
    );
  }

  /// `Clear`
  String get clear {
    return Intl.message(
      'Clear',
      name: 'clear',
      desc: '',
      args: [],
    );
  }

  /// `Add`
  String get add {
    return Intl.message(
      'Add',
      name: 'add',
      desc: '',
      args: [],
    );
  }

  /// `from`
  String get from {
    return Intl.message(
      'from',
      name: 'from',
      desc: '',
      args: [],
    );
  }

  /// `to`
  String get to {
    return Intl.message(
      'to',
      name: 'to',
      desc: '',
      args: [],
    );
  }

  /// `Lat`
  String get lat {
    return Intl.message(
      'Lat',
      name: 'lat',
      desc: '',
      args: [],
    );
  }

  /// `Long`
  String get long {
    return Intl.message(
      'Long',
      name: 'long',
      desc: '',
      args: [],
    );
  }

  /// `Loading`
  String get loading {
    return Intl.message(
      'Loading',
      name: 'loading',
      desc: '',
      args: [],
    );
  }

  /// `Missing Required Fields`
  String get missingRequiredFields {
    return Intl.message(
      'Missing Required Fields',
      name: 'missingRequiredFields',
      desc: '',
      args: [],
    );
  }

  /// `Please complete all required fields before submitting the form.`
  String get missingRequiredFieldsDesc {
    return Intl.message(
      'Please complete all required fields before submitting the form.',
      name: 'missingRequiredFieldsDesc',
      desc: '',
      args: [],
    );
  }

  /// `Select Language`
  String get selectLanguage {
    return Intl.message(
      'Select Language',
      name: 'selectLanguage',
      desc: '',
      args: [],
    );
  }

  /// `English`
  String get english {
    return Intl.message(
      'English',
      name: 'english',
      desc: '',
      args: [],
    );
  }

  /// `Nepali`
  String get nepali {
    return Intl.message(
      'Nepali',
      name: 'nepali',
      desc: '',
      args: [],
    );
  }

  /// `Landslide`
  String get landslide {
    return Intl.message(
      'Landslide',
      name: 'landslide',
      desc: '',
      args: [],
    );
  }

  /// `Police`
  String get police {
    return Intl.message(
      'Police',
      name: 'police',
      desc: '',
      args: [],
    );
  }

  /// `Ambulance`
  String get ambulance {
    return Intl.message(
      'Ambulance',
      name: 'ambulance',
      desc: '',
      args: [],
    );
  }

  /// `Fire Service`
  String get fire_service {
    return Intl.message(
      'Fire Service',
      name: 'fire_service',
      desc: '',
      args: [],
    );
  }

  /// `Close`
  String get close {
    return Intl.message(
      'Close',
      name: 'close',
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
