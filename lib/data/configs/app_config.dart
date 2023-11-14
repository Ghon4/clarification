import 'package:flutter/foundation.dart';

class AppConfig {
  static const String defaultLocale = 'en';

  static const appleApiKey = '';

  static const googleApiKey = '';

  static const entitlementKey = '';

  static String get baseUrl {
    if (kReleaseMode) {
      /// TODO
      // Production environment
      return '';
    } else if (kDebugMode) {
      // Test environment
      return '';
    } else {
      // Development environment
      return '';
    }
  }

  static String get oneSignalAppId {
    if (kReleaseMode) {
      /// TODO
      // Production environment
      return '';
    } else if (kDebugMode) {
      // Test environment
      return '';
    } else {
      // Development environment
      return '';
    }
  }
}
