import 'package:advice/core/utils/shared_pref_manager.dart';
import 'package:advice/generated/l10n.dart';
import 'package:advice/main.dart';
import 'package:flutter/material.dart';

class LocalizationUtils {
  static String localKey = 'en';

  static const Map<String, Map<String, String>> supportedLanguageMap = {
    'English': {
      'languageCode': 'en',
    },
    'Nepali': {
      'languageCode': 'ne',
    },
  };

  static List<Locale> extractSupportedLocales() {
    final supportedLocales = <Locale>[];

    supportedLanguageMap.forEach((key, value) {
      supportedLocales.add(Locale(value['languageCode']!));
    });
    return supportedLocales;
  }

  static const languageList = ["en", "ne"];

  static Future<Locale> getLocale() async {
    final code = await SharedPrefManager.instance.getLanguageCode();
    await AppLocalizations.load(Locale(code));
    localKey = code;
    return Locale(code);
  }

  static Future<void> changeLocale(
    String newLocale,
    BuildContext context,
  ) async {
    await SharedPrefManager.instance.setLanguageCode(newLocale);
    await AppLocalizations.load(Locale(newLocale));
    localKey = newLocale;
    if (context.mounted) {
      MyApp.setLocale(context);
    }
  }
}

extension LocalizedBuildContext on BuildContext {
  AppLocalizations get loc => AppLocalizations.of(this);
}
