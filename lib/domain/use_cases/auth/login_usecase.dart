import 'package:dartz/dartz.dart';
import 'package:demop/domain/repository/auth_repository.dart';

class LoginUseCase {
  final AuthRepository _repository;

  LoginUseCase(this._repository);

  Future<Either<String, void>> call(String phoneNumber) async {
    return await _repository.login(phoneNumber);
  }
}
