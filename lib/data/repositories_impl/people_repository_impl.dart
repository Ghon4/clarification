import 'package:dartz/dartz.dart';
import 'package:demop/data/data_providers/data_source/people_datasource/people_datasource.dart';
import 'package:demop/domain/entities/person_entity.dart';
import 'package:demop/domain/repository/people_repository.dart';

class PeopleRepositoryImpl implements PeopleRepository {
final PeopleDataSource peopleDataSource;
  PeopleRepositoryImpl({required this.peopleDataSource
  });

  @override
  Future<Either<String, PersonEntity>> getPeople(int page) {
     return peopleDataSource.getPeople( page);
  }


}