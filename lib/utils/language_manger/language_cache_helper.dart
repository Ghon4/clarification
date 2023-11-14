// import 'dart:developer';
// import 'dart:ui';
//
//
// class LanguageCacheHelper {
//   static const String _locale = 'locale';
//   Future<void> cacheLanguageCode(String languageCode) async {
//     SecureStorage.instance.write(_locale, languageCode);
//   }
//
//   Future<String> getCachedLanguageCode() async {
//     final cachedLanguageCode = await SecureStorage.instance.read(_locale);
//     if (cachedLanguageCode != null) {
//       AppConstants.shared.setCurrentLanguageCode(cachedLanguageCode);
//       return cachedLanguageCode;
//     } else {
//       log("deviceLocale_xxvc: ${getDeviceLanguage()}");
//       AppConstants.shared.setCurrentLanguageCode(getDeviceLanguage());
//       return getDeviceLanguage();
//     }
//   }
//
//   String getDeviceLanguage() {
//     // Get the current platform dispatcher
//     final platformDispatcher = PlatformDispatcher.instance;
//
//     // Get the current locale from the platform dispatcher
//     final platformLocale = platformDispatcher.locale;
//
//     // Extract the language code from the locale
//     final languageCode = platformLocale.languageCode;
//
//     return languageCode;
//   }
// }
