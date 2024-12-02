import 'dart:developer';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';

class FirebaseService {
  factory FirebaseService() => _instance;
  FirebaseService._internal();

  static final FirebaseService _instance = FirebaseService._internal();

  bool _isInitialized = false;

  Future<void> initializeFirebase() async {
    if (_isInitialized) {
      return;
    }

    await Firebase.initializeApp().then(
      (value) => log('Firebase initialized'),
    );
    await FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(true);
    FlutterError.onError = (errorDetails) {
      FirebaseCrashlytics.instance.recordFlutterFatalError(errorDetails);
      log(
        '---> Crash : $errorDetails',
      );
    };

    PlatformDispatcher.instance.onError = (error, stack) {
      FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
      log(
        '---> Crash : $error',
      );
      return true;
    };

    _isInitialized = true;
  }

  /// Reports an exception to Firebase Crashlytics.
  ///
  /// This method records an exception to Firebase Crashlytics for further
  ///  analysis and debugging.
  /// It requires the [error] and [stackTrace] parameters to be provided.
  /// The [functionName] parameter is optional and can be used to specify the
  /// name of the function where the exception occurred.
  /// The [reason] parameter is optional and can be used to provide additional
  /// information about the exception like failed to fetch user data
  /// The [fatal] parameter is optional and indicates whether the exception is
  /// fatal or not.
  ///
  /// Example usage:
  /// ```dart
  /// try {
  ///   // Code that may throw an exception
  /// } catch (error, stackTrace) {
  ///   await FirebaseService.instance.reportException(error,
  ///  'myFunction', stackTrace, reason: 'Something went wrong', fatal: true);
  /// }
  /// ```
  Future<void> reportException(
    dynamic error,
    String? functionName,
    dynamic stackTrace, {
    dynamic reason,
    bool fatal = false,
  }) async {
    await _initializeIfNeeded();
    // ignore: lines_longer_than_80_chars
    log('----->${functionName != null ? 'Function: $functionName' : ''}Error: $error, StackTrace: $stackTrace${reason != null ? ', Reason: $reason' : ''}');
    await FirebaseCrashlytics.instance
        .recordError(error, stackTrace, reason: reason, fatal: fatal);
  }

  // Logs a message to Firebase Crashlytics
  Future<void> logMessageToFirebase(String message) async {
    await _initializeIfNeeded();
    await FirebaseCrashlytics.instance.log(message);
  }

  // Helper method to ensure initialization
  Future<void> _initializeIfNeeded() async {
    if (!_isInitialized) {
      await initializeFirebase();
    }
  }
}
