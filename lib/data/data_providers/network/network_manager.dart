// import 'package:dio/dio.dart';
/// generic class for network manager with get, post, put, delete methods
// class NetworkManager {
//   late Dio _dio;
//
//   NetworkManager() {
//     _dio = DioInitializer.dioInstance;
//   }
//
//   Future<T> get<T>(String endpoint,
//       {Map<String, dynamic>? queryParameters}) async {
//     try {
//       final response =
//           await _dio.get(endpoint, queryParameters: queryParameters);
//       return response as T;
//     } on DioException catch (e) {
//       throw _handleError(e);
//     }
//   }
//
//   Future<T> post<T>(String endpoint, dynamic data,
//       {Map<String, dynamic>? queryParameters}) async {
//     try {
//       final response = await _dio.post(endpoint,
//           data: data, queryParameters: queryParameters);
//       return response as T;
//     } on DioException catch (e) {
//       // return e as T;
//       throw _handleError(e);
//     }
//   }
//
//   Future<T> put<T>(String endpoint, dynamic data,
//       {Map<String, dynamic>? queryParameters}) async {
//     try {
//       final response = await _dio.put(endpoint,
//           data: data, queryParameters: queryParameters);
//       return response as T;
//     } catch (e) {
//       throw _handleError(e);
//     }
//   }
//
//   Future<T> delete<T>(String endpoint,
//       {Map<String, dynamic>? queryParameters}) async {
//     try {
//       final response =
//           await _dio.delete(endpoint, queryParameters: queryParameters);
//       return response as T;
//     } catch (e) {
//       throw _handleError(e);
//     }
//   }
//
//   dynamic _handleError(dynamic error) {
//     if (error is DioException) {
//       if (error.response != null) {
//         final responseData = error.response!.data;
//
//         if (responseData != null) {
//           final messageData = responseData['message'];
//           final statusCode = responseData['statusCode'];
//
//           if (messageData != null &&
//               // messageData is List<dynamic> &&
//               messageData.isNotEmpty) {
//             final message;
//             if (messageData is List) {
//               message = messageData[0];
//             } else {
//               message = messageData;
//             }
//
//             throw NetworkException(message, statusCode);
//           } else {
//             throw NetworkException(
//                 "No message found in response data.", statusCode);
//           }
//         } else {
//           throw NetworkException(
//               "Response data is null.", error.response!.statusCode!);
//         }
//       } else {
//         throw NetworkException(
//             "No response from server.", error.response!.statusCode!);
//       }
//     }
//     throw error;
//   }
// }
//
// class NetworkException implements Exception {
//   final String message;
//   final int statusCode;
//   NetworkException(this.message, this.statusCode);
//   @override
//   String toString() {
//     return message;
//   }
// }
