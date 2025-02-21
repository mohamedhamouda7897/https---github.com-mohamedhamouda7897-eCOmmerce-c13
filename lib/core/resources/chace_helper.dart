import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefs {
  static SharedPreferences? _prefs;

  static Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  static Future<bool> set<T>(String key, T value) async {
    if (_prefs == null) return false;

    if (value is String) {
      return _prefs!.setString(key, value);
    } else if (value is bool) {
      return _prefs!.setBool(key, value);
    } else if (value is int) {
      return _prefs!.setInt(key, value);
    } else if (value is double) {
      return _prefs!.setDouble(key, value);
    } else if (value is List<String>) {
      return _prefs!.setStringList(key, value);
    } else {
      throw Exception("Invalid type");
    }
  }

  static T? get<T>(String key) {
    if (_prefs == null) return null;

    Object? value = _prefs!.get(key);
    if (value is T) {
      return value;
    }
    return null;
  }

  static Future<bool> remove(String key) async {
    if (_prefs == null) return false;
    return _prefs!.remove(key);
  }
}
