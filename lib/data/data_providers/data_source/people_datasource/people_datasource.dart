import 'package:dartz/dartz.dart';
import 'package:demop/domain/entities/person_entity.dart';

abstract class PeopleDataSource {
  Future<Either<String, PersonEntity>> getPeople(int page);
}