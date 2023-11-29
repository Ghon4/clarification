part of 'people_cubit.dart';

@immutable
abstract class PeopleState {}

class PeopleInitial extends PeopleState {}

class PeopleLoading extends PeopleState {}

class PeopleLoaded extends PeopleState {
  final PersonEntity people;
  PeopleLoaded({required this.people});
}

class PeopleError extends PeopleState {
  final String message;
  PeopleError({required this.message});
}