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
          // final token = await SecureStorage.instance.storage.read(key: 'token');
          options.headers["Authorization"] = "Bearer ${AppConfig.authToken}}";
          // final appVersion = AppConstants.shared.packageInfo.version;
          // options.headers["version"] = appVersion;
          // final String cachedLanguageCode =
          //     await LanguageCacheHelper().getCachedLanguageCode();
          // options.headers["language"] = cachedLanguageCode;
          // options.headers["platform"] =  Platform.operatingSystem;
          return handler.next(options);
        },
      ));
      _dioInstance?.options.headers["Content-Type"] = "application/json";
      _dioInstance?.options.headers["Accept"] = "application/json";
      // _dioInstance?.addSentry(
      //   failedRequestTargets: [AppConfig.baseUrl],
      // );
      _dioInstance!
        ..options.connectTimeout = const Duration(minutes: 1)
        ..options.receiveTimeout = const Duration(minutes: 1)
        ..options.baseUrl = AppConfig.baseUrl;
      if (kDebugMode) {
        _dioInstance!.interceptors.add(LogInterceptor());
      }
    }
    return _dioInstance!;
  }
}
