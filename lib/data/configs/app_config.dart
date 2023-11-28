import 'package:flutter/foundation.dart';

class AppConfig {
  // static const String defaultLocale = 'en';
  //
  // static const appleApiKey = '';
  //
  // static const googleApiKey = '';

  static const apiKey = '6a222a0bf85f125fd558c29f1f9a6205';
  static const authToken =
      "eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI2YTIyMmEwYmY4NWYxMjVmZDU1OGMyOWYxZjlhNjIwNSIsInN1YiI6IjY1NjVlOGQ5ZDk1NDIwMDBmZTMzMzYzMSIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.I5TzJhNPtcWT6uWTnZYrwbHFZEqLqgff5HR3S6YZYHg";

  static String get baseUrl {
    if (kReleaseMode) {
      /// TODO
      // Production environment
      return 'https://api.themoviedb.org/3';
    } else if (kDebugMode) {
      // Test environment
      return 'https://api.themoviedb.org/3';
    } else {
      // Development environment
      return 'https://api.themoviedb.org/3';
    }
  }

  // static String get oneSignalAppId {
  //   if (kReleaseMode) {
  //     /// TODO
  //     // Production environment
  //     return '';
  //   } else if (kDebugMode) {
  //     // Test environment
  //     return '';
  //   } else {
  //     // Development environment
  //     return '';
  //   }
  // }
}
