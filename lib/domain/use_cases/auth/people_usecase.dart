import 'package:dartz/dartz.dart';
import 'package:demop/domain/entities/person_entity.dart';
import 'package:demop/domain/repository/people_repository.dart';

class PeopleUseCase {
  final PeopleRepository _peopleRepository;

  PeopleUseCase(this._peopleRepository);

  Future<Either<String, PersonEntity>> call(int page) async {
    return await _peopleRepository.getPeople(page);
  }
}