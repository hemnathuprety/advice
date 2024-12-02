import 'dart:developer';

import 'package:advice/core/di/injection_container.dart';
import 'package:advice/core/route/route_router.dart';
import 'package:advice/core/services/firebase_service.dart';
import 'package:advice/core/services/notification_service.dart';
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

  //var token = await FirebaseMessaging.instance.getToken();

  configureDependencies();
  AppTheme.initUiOverlayStyle();
  getIt.registerSingleton<AppRouter>(AppRouter());
  runApp(MyApp());
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: AppColors.surfaceColorDark, // Set your desired color here
  ));
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final AppRouter _appRouter = AppRouter();

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
      supportedLocales: const [
        Locale('en'), // English
        Locale('ne'), // Nepali
      ],
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
        useMaterial3: true,
      ),
    );
  }
}
