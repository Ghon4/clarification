// import 'dart:convert';
// import 'dart:developer';
/// generic class for secure storage of data in the device (iOS and Android) using FlutterSecureStorage package (https://pub.dev/packages/flutter_secure_storage)
// class SecureStorage {
//   SecureStorage._internal();
//   static final SecureStorage _singleton = SecureStorage._internal();
//   static SecureStorage get instance => _singleton;
//
//   final FlutterSecureStorage storage = const FlutterSecureStorage();
//
//   // Save user-specific data
//   Future<void> saveUserData(userData) async {
//     final String userDataJson = json.encode(userData);
//     await write(AppStrings.userData, userDataJson);
//   }
//
//   // Retrieve user-specific data
//   Future<Map<String, dynamic>?> getUserData() async {
//     final String? userDataJson = await read(AppStrings.userData);
//     if (userDataJson != null) {
//       return json.decode(userDataJson);
//     }
//     return null;
//   }
//
//   Future<void> saveNotificationSettings(notificationSettings) async {
//     final String notificationSettingsJson = json.encode(notificationSettings);
//     await write(AppStrings.notificationSettings, notificationSettingsJson);
//   }
//
//   Future<Map<String, dynamic>?> getNotificationSettings() async {
//     final String? notificationSettingsJson =
//         await read(AppStrings.notificationSettings);
//     if (notificationSettingsJson != null) {
//       return json.decode(notificationSettingsJson);
//     }
//     return null;
//   }
//
//   Future<void> write(String key, String? value) async {
//     log('------- Save key-value -------');
//     log('key: $key ---- value: $value');
//     await storage.write(key: key, value: value);
//   }
//
//   Future<void> writeList(String key, List? value) async {
//     log('------- Save key-value -------');
//     log('key: $key ---- value: $value');
//     final String encodeValue = json.encode(value);
//     await storage.write(key: key, value: encodeValue);
//   }
//
//   Future<List?> readList(String key) async {
//     log('------- Read key-value -------');
//     final String? value = await storage.read(key: key);
//     log('key: $key ---- value: $value');
//     if (value != null) {
//       return json.decode(value);
//     }
//     return null;
//   }
//
//   Future<String?> read(String key) async {
//     log('------- Read key-value -------');
//     final String? value = await storage.read(key: key);
//     log('key: $key ---- value: $value');
//     return value;
//   }
//
//   Future<bool> containsKey(String key) async {
//     log('------- Check key-value -------');
//     final bool containsKey = await storage.containsKey(key: key);
//     log('key: $key ---- containsKey: $containsKey');
//     return containsKey;
//   }
//
//   Future<void> delete(String key) async {
//     await storage.delete(key: key);
//     log('------- Deleted key-value for $key -------');
//   }
//
//   Future<void> deleteAll() async {
//     await storage.deleteAll();
//     log('------- Deleted All Secure Storage data -------');
//   }
// }
