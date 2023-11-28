import 'package:dartz/dartz.dart';
import 'package:demop/data/data_providers/network/network_manager.dart';
import 'package:demop/domain/entities/person_entity.dart';
import 'package:demop/utils/constants/end_points.dart';

import 'people_datasource.dart';

class PeopleDataSourceImpl extends PeopleDataSource {
  final NetworkManager _dio = NetworkManager();

  @override
  Future<Either<String, PersonEntity>> getPeople(int page) async {
    try {
      final r = await _dio.get(
        Endpoints.people,
        queryParameters: {
          'page': page,
        },
      );
      return Right(PersonEntity.fromJson(r.data));
    } catch (e) {
      return Left(e.toString());
    }
  }
}
