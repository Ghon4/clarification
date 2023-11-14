import 'package:dartz/dartz.dart';

abstract class AuthDataSource {
  Future<Either<String, void>> login(String phoneNumber);

}
