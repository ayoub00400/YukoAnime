// ignore_for_file: constant_identifier_names
import 'package:shared_preferences/shared_preferences.dart';

class Prefs {
  static late SharedPreferences _prefs;

  // call this method in main().
  static Future<SharedPreferences> init() async {
    _prefs = await SharedPreferences.getInstance();
    return _prefs;
  }

  //sets
  static Future<bool> setBool(String key, bool value) async => await _prefs.setBool(key, value);

  static Future<bool> setDouble(String key, double value) async => await _prefs.setDouble(key, value);

  static Future<bool> setInt(String key, int value) async => await _prefs.setInt(key, value);

  static Future<bool> setString(String key, String value) async => await _prefs.setString(key, value);

  static Future<bool> setStringList(String key, List<String> value) async => await _prefs.setStringList(key, value);

  //gets
  static bool? getBool(String key) => _prefs.getBool(key);

  static double? getDouble(String key) => _prefs.getDouble(key);

  static int? getInt(String key) => _prefs.getInt(key);

  static String? getString(String key) => _prefs.getString(key);

  static List<String>? getStringList(String key) => _prefs.getStringList(key);

  //deletes..
  static Future<bool> remove(String key) async => await _prefs.remove(key);

  static Future<bool> clear() async => await _prefs.clear();
}

// Keys
class SPKeys {
  static const language = 'Language';
  static const theme = 'Theme';
  static const userName = 'UserName';
  static const userId = 'UserId';
  static const token = 'Token';
  static const email = 'Email';
  static const passWord = 'Password';
  static const url = 'Url';
  static const isFirstTime = 'isFirstTime';
  static const username = 'UserName';
  static const loggedIn = 'LoggedIn';
  static const ip = 'SqlIp';
  static const sqlUsername = 'SqlUserName';
  static const sqlPassword = 'SqlPassword';
  static const database = 'SqlDatabaseName';
}
