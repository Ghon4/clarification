// import 'dart:async';
//
// import 'package:connectivity_plus/connectivity_plus.dart';
// import 'package:dio/dio.dart';
/// class for retrying the request when the connection is back
// class DioConnectivityRequestRetrier {
//   final Dio dio;
//   final Connectivity connectivity;
//
//   DioConnectivityRequestRetrier({
//     required this.dio,
//     required this.connectivity,
//   });
//
//   Future<Response> scheduleRequestRetry(RequestOptions requestOptions, ) async {
//     StreamSubscription? streamSubscription;
//     final responseCompleter = Completer<Response>();
//
//     streamSubscription = connectivity.onConnectivityChanged.listen(
//       (connectivityResult) {
//         if (connectivityResult != ConnectivityResult.none) {
//           streamSubscription?.cancel();
//           responseCompleter.complete(
//             dio.request(
//               requestOptions.path,
//               cancelToken: requestOptions.cancelToken,
//               data: requestOptions.data,
//               onReceiveProgress: requestOptions.onReceiveProgress,
//               onSendProgress: requestOptions.onSendProgress,
//               queryParameters: requestOptions.queryParameters,
//             ),
//           );
//         }
//       },
//     );
//
//     return responseCompleter.future;
//   }
// }
