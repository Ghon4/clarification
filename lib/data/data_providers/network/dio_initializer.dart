import 'package:demop/data/configs/app_config.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

/// class for dio initializer and dio instance creation with interceptors and headers and other configurations
class DioInitializer {
  // late final Connectivity? connectivity;

  static Dio? _dioInstance;

  static Dio get dioInstance {
    if (_dioInstance == null) {
      _dioInstance = Dio();
      // _dioInstance?.interceptors.add(
      //   RetryOnConnectionChangeInterceptor(
      //     requestRetrier: DioConnectivityRequestRetrier(
      //       dio: _dioInstance!,
      //       connectivity: Connectivity(),
      //     ),
      //   ),
      // );
      _dioInstance?.interceptors.add(InterceptorsWrapper(
        onRequest: (options, handler) async {
          options.baseUrl = AppConfig.baseUrl;
          options.headers["Authorization"] = "Bearer ${AppConfig.authToken}";
          // final appVersion = AppConstants.shared.packageInfo.version;
          // options.headers["version"] = appVersion;
          // final String cachedLanguageCode =
          //     await LanguageCacheHelper().getCachedLanguageCode();
          // options.headers["language"] = cachedLanguageCode;
          options.headers["language"] = "en-US";
          // options.headers["platform"] =  Platform.operatingSystem;
          options.headers["Content-Type"] = "application/json";
          options.headers["accept"] = "application/json";
          options.receiveTimeout = const Duration(minutes: 1);
          options.connectTimeout = const Duration(minutes: 1);
          // options.addSentry(
          //   failedRequestTargets: [AppConfig.baseUrl],
          // );
          return handler.next(options);
        },
      ));
      if (kDebugMode) {
        _dioInstance!.interceptors.add(LogInterceptor());
      }
    }
    return _dioInstance!;
  }
}
