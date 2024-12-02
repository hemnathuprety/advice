import 'dart:developer';

import 'package:advice/core/services/local_notification_service.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

class NotificationService {
  static Future<void> handleNotificationService(BuildContext context) async {
    try {
      FirebaseMessaging messaging = FirebaseMessaging.instance;

      NotificationSettings settings = await messaging.requestPermission(
        alert: true,
        announcement: false,
        badge: true,
        carPlay: false,
        criticalAlert: false,
        provisional: false,
        sound: true,
      );

      if (settings.authorizationStatus == AuthorizationStatus.authorized) {
        log('User granted permission');
      } else if (settings.authorizationStatus ==
          AuthorizationStatus.provisional) {
        log('User granted provisional permission');
      } else {
        //Utility().enableNotificationDialog(context);
      }

      FirebaseMessaging.onMessage.listen(
        (RemoteMessage message) {
          log('Got a message whilst in the foreground!');
          log('Message data: ${message.data.entries}');

          if (message.notification != null) {
            log('####Message also contained a notification: ${message.notification}');
            if (context.mounted) {
              LocalNotificationService.handleIncomingMessage(message, context);
            }
          }
        },
      );

      FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);

      FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
        log('Got a message whilst in the foreground!');
        log('Message data: ${message.data.entries}');

        if (message.notification != null) {
          log('####Message also contained a notification: ${message.notification}');
          if (context.mounted) {
            LocalNotificationService.handleMessage(message);
          }
        }
      });

      await FirebaseMessaging.instance
          .setForegroundNotificationPresentationOptions(
        alert: true,
        badge: true,
        sound: true,
      );
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  static Future<void> firebaseMessagingBackgroundHandler(
      RemoteMessage message) async {
    LocalNotificationService.handleBackgroundMessage(message);
  }
}
