import 'package:hive_flutter/hive_flutter.dart';

class StorageRepository {
  static late Box _box;

  /// Init
  static Future<void> init() async {
    // Hive init
    await Hive.initFlutter();
    // Open box
    _box = await Hive.openBox('storageBox');
  }

  /// Set Methods
  static Future<void> setString({
    required String key,
    required String value,
  }) async {
    await _box.put(key, value);
  }

  static Future<void> setBool({
    required String key,
    required bool value,
  }) async {
    await _box.put(key, value);
  }

  static Future<void> setInt({
    required String key,
    required int value,
  }) async {
    await _box.put(key, value);
  }

  static Future<void> setDouble({
    required String key,
    required double value,
  }) async {
    await _box.put(key, value);
  }

  static Future<void> setStringList({
    required String key,
    required List<String> list,
  }) async {
    await _box.put(key, list);
  }

  /// Get Methods
  static String? getString({required String keyOfValue}) {
    return _box.get(keyOfValue);
  }

  static bool getBool({required String keyOfValue}) {
    return _box.get(keyOfValue, defaultValue: false);
  }

  static bool? getBoolOrNull({required String keyOfValue}) {
    return _box.get(keyOfValue);
  }

  static int? getInt({required String keyOfValue}) {
    return _box.get(keyOfValue);
  }

  static double? getDouble({required String keyOfValue}) {
    return _box.get(keyOfValue);
  }

  static List<String>? getStringList({required String key}) {
    return _box.get(key)?.cast<String>();
  }

  /// Delete Key
  static Future<void> deleteKey({required String key}) async {
    await _box.delete(key);
  }

  /// Clear All
  static Future<void> clearAll() async {
    await _box.clear();
  }
}
