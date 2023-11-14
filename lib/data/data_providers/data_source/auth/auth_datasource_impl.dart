// import 'package:dartz/dartz.dart';
/// implement the [AuthDataSource] interface and use the [NetworkManager] to make the API call. The [NetworkManager] is a wrapper around the [Dio] package.
// class AuthDataSourceImpl implements AuthDataSource {
//   final NetworkManager _dio = NetworkManager();
//
//   @override
//   Future<Either<String, void>> login(String phoneNumber) async {
//     try {
//       await _dio.post(Endpoints.login, {'phone': phoneNumber});
//       return const Right(null);
//     } catch (e) {
//       return Left(e.toString());
//     }
//   }
//
//
// }
