import 'dart:convert';
import 'dart:developer';

import 'package:advice/core/di/injection_container.dart';
import 'package:advice/core/route/route_router.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class LocalNotificationService {
  static Future<void> handleBackgroundMessage(RemoteMessage message) async {
    log('Title: ${message.notification?.title}');
    log('Body: ${message.notification?.body}');
    log('background message');
    var notification = message.notification;
    if (notification == null) return;
    navigateToHomeScreen();
  }

  static void navigateToHomeScreen() {
    getIt<AppRouter>().pushNamed("/home");
  }

  static void handleMessage(RemoteMessage? message) async {
    if (message == null) return;
    log('inside handle message: ${message.notification} \n ${message.notification!.title}');
    var notification = message.notification;
    if (notification == null) return;
    navigateToHomeScreen();
  }

  static void handleIncomingMessage(
      RemoteMessage? message, BuildContext context) async {
    var initializationSettingsIOS = DarwinInitializationSettings(
      requestAlertPermission: true,
      requestBadgePermission: true,
      requestSoundPermission: true,
    );

    const initializationSettingsAndroid =
        AndroidInitializationSettings("@mipmap/ic_launcher");

    var initializationSettings = InitializationSettings(
        android: initializationSettingsAndroid, iOS: initializationSettingsIOS);

    if (message == null) return;
    log('inside handle message: ${message.notification} \n ${message.notification!.title}');
    var notification = message.notification;
    final localNotifications = FlutterLocalNotificationsPlugin();

    localNotifications.initialize(
      initializationSettings,
      onDidReceiveBackgroundNotificationResponse: onDidReceiveBN,
      onDidReceiveNotificationResponse: onDidReceive,
    );

    if (notification == null) return;
    localNotifications.show(
        notification.hashCode,
        notification.title,
        notification.body,
        const NotificationDetails(
            android: AndroidNotificationDetails(
          "dor",
          "dor_notification",
          icon: "@mipmap/ic_launcher",
          importance: Importance.max,
          priority: Priority.high,
        )),
        payload: jsonEncode(
          message.toMap(),
        ));
  }

  static Future<void> onDidReceiveBN(NotificationResponse details) async {
    log('inside did receive back notification');
    navigateToHomeScreen();
  }

  static Future<void> onDidReceive(NotificationResponse details) async {
    log('inside did receive back notification');
    navigateToHomeScreen();
  }
}
