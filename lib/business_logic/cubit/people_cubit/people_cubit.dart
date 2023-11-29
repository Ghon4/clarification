import 'package:bloc/bloc.dart';
import 'package:demop/domain/entities/person_entity.dart';
import 'package:demop/domain/use_cases/auth/people_usecase.dart';
import 'package:meta/meta.dart';

part 'people_state.dart';

class PeopleCubit extends Cubit<PeopleState> {
  final PeopleUseCase _peopleUseCase;
  PeopleCubit(this._peopleUseCase) : super(PeopleInitial());
  int page = 1; // for pagination

  Future<void> getPopularPeople() async {
    emit(PeopleLoading());
    try {
      final people = await _peopleUseCase.call(page);
      if (isClosed) return;
      people.fold(
        (l) => emit(PeopleError(message: l)),
        (r) => emit(PeopleLoaded(people: r)),
      );
      page++;
    } catch (e) {
      emit(PeopleError(message: e.toString()));
    }
  }
}
