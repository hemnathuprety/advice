import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefManager {
  SharedPrefManager._();

  static final _instance = SharedPrefManager._();

  static SharedPrefManager get instance => _instance;

  static const languageCode = 'language_code';
  static const notificationSetting = 'notification_setting';
  static const appSetup = 'app_setup';
  static const accessToken = 'access_token';

  Future<void> setAppSetUp() async {
    final sharedPref = await SharedPreferences.getInstance();
    await sharedPref.setBool(appSetup, true);
  }

  Future<bool> getAppSetUp() async {
    final sharedPref = await SharedPreferences.getInstance();
    final result = sharedPref.getBool(appSetup);
    return result ?? false;
  }
  Future<void> setNotificationSetting(bool param) async {
    final sharedPref = await SharedPreferences.getInstance();
    await sharedPref.setBool(notificationSetting, param);
  }

  Future<bool> getNotificationSetting() async {
    final sharedPref = await SharedPreferences.getInstance();
    final result = sharedPref.getBool(notificationSetting);
    return result ?? false;
  }

  Future<void> setAccessToken(String code) async {
    final sharedPref = await SharedPreferences.getInstance();
    await sharedPref.setString(accessToken, code);
  }

  Future<String> getAccessToken() async {
    final sharedPref = await SharedPreferences.getInstance();
    final result = sharedPref.getString(accessToken);
    return result ?? '';
  }

  Future<void> clearSharePref() async {
    final sharedPref = await SharedPreferences.getInstance();
    await sharedPref.clear();
  }

  Future<void> setLanguageCode(String code) async {
    final sharedPref = await SharedPreferences.getInstance();
    await sharedPref.setString(languageCode, code);
  }

  Future<String> getLanguageCode() async {
    final sharedPref = await SharedPreferences.getInstance();
    final result = sharedPref.getString(languageCode);
    return result ?? Intl.getCurrentLocale();
  }
}
