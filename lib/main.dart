import 'dart:developer';

import 'package:advice/core/di/injection_container.dart';
import 'package:advice/core/route/route_router.dart';
import 'package:advice/core/services/firebase_service.dart';
import 'package:advice/core/services/notification_service.dart';
import 'package:advice/core/utils/localization_utils.dart';
import 'package:advice/generated/l10n.dart';
import 'package:advice/themes/color_extensions.dart';
import 'package:advice/themes/theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'firebase_options.dart';
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  try {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  } catch (e) {
    log('Error initializing Firebase: $e');
  }

  await FirebaseService().initializeFirebase();

  configureDependencies();
  AppTheme.initUiOverlayStyle();
  getIt.registerSingleton<AppRouter>(AppRouter());
  runApp(MyApp());
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: AppColors.surfaceColorDark, // Set your desired color here
  ));
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();

  static void setLocale(BuildContext context) {
    final state = context.findAncestorStateOfType<_MyAppState>();
    state?.rebuildAllChildren();
  }
}

class _MyAppState extends State<MyApp> {
  final AppRouter _appRouter = AppRouter();

  void rebuildAllChildren() {
    void rebuild(Element el) {
      el.markNeedsBuild();
      // ignore: cascade_invocations
      el.visitChildren(rebuild);
    }

    (context as Element).visitChildren(rebuild);
  }

  @override
  Future<void> didChangeDependencies() async {
    // ignore: unawaited_futures
    LocalizationUtils.getLocale().then((value) {
      rebuildAllChildren();
    });
    super.didChangeDependencies();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    NotificationService.handleNotificationService(context);
    return MaterialApp.router(
      routerConfig: _appRouter.config(),
      title: 'DOR',
      localizationsDelegates: const [
        AppLocalizations.delegate, // Add this line
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: LocalizationUtils.extractSupportedLocales(),
      localeResolutionCallback: (locale, supportedLocales) {
        // Check if the current device locale is supported
        for (final supportedLocale in supportedLocales) {
          if (supportedLocale.languageCode == locale?.languageCode ||
              supportedLocale.countryCode == locale?.countryCode) {
            return supportedLocale;
          }
        }
        // If the locale of the device is not supported, use the first one
        // from the list (English, in this case).
        return const Locale('en');
      },
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
        useMaterial3: true,
      ),
    );
  }
}
