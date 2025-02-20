import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesService {
  static SharedPreferencesService? _instance;
  static SharedPreferences? _preferences;

  static Future<SharedPreferencesService> getInstance() async {
    _instance ??= SharedPreferencesService();
    _preferences ??= await SharedPreferences.getInstance();
    return _instance!;
  }

  T? get<T>(String key) {
    final value = _preferences!.get(key);
    if (value is T) {
      return value;
    } else if (T == String && value is int) {
      // For handling cases where ints are saved as strings
      return value.toString() as T;
    } else if (value is String) {
      // Attempt to decode JSON for complex types
      try {
        return json.decode(value) as T;
      } catch (e) {
        print('SharedPreferencesService: Error decoding JSON from string');
      }
    }
    return null;
  }

  Future<bool> set<T>(String key, T value) async {
    if (value is String) {
      return await _preferences!.setString(key, value);
    } else if (value is bool) {
      return await _preferences!.setBool(key, value);
    } else if (value is int) {
      return await _preferences!.setInt(key, value);
    } else if (value is double) {
      return await _preferences!.setDouble(key, value);
    } else if (value is List<String>) {
      return await _preferences!.setStringList(key, value);
    } else {
      // Save complex objects as JSON string
      return await _preferences!.setString(key, json.encode(value));
    }
  }

  Future<bool> remove(String key) async {
    return await _preferences!.remove(key);
  }
}
