import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesManager {
  static SharedPreferences? _prefs;

  static Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  // Generic read method
  static T? read<T>(String key) {
    final value = _prefs?.get(key);
    if (value is T) {
      return value;
    }
    return null;
  }

  // Generic save method
  static Future<bool> save<T>(String key, T value) async {
    if (value is int) {
      return await _prefs!.setInt(key, value);
    } else if (value is double) {
      return await _prefs!.setDouble(key, value);
    } else if (value is String) {
      return await _prefs!.setString(key, value);
    } else if (value is bool) {
      return await _prefs!.setBool(key, value);
    } else {
      throw Exception("Invalid type");
    }
  }

  // Generic remove method
  static Future<bool> remove(String key) async {
    return await _prefs!.remove(key);
  }
}
