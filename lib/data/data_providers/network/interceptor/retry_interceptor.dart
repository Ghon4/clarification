// import 'dart:io';
//
// import 'package:dio/dio.dart';
/// class for retrying the request when the connection is back
// class RetryOnConnectionChangeInterceptor extends Interceptor {
//   final DioConnectivityRequestRetrier requestRetrier;
//
//   RetryOnConnectionChangeInterceptor({
//     required this.requestRetrier,
//   });
//
// @override
//   void onError(DioException error, ErrorInterceptorHandler handler) async {
//     if (_shouldRetry(error)) {
//       try {
//         final response =
//             await requestRetrier.scheduleRequestRetry(error.requestOptions);
//         handler.resolve(response);
//       } catch (e) {
//         handler.reject(error);
//       }
//     } else {
//       handler.next(error);
//     }
//   }
//   bool _shouldRetry(DioException err) {
//     return err.type == DioExceptionType.connectionError &&
//         err.error != null &&
//         err.error is SocketException;
//   }
// }
