// import 'dart:async';
//
// import 'package:bloc/bloc.dart';
//
// part 'geolocation_event.dart';
// part 'geolocation_state.dart';
//
// class GeolocationBloc extends Bloc<GeolocationEvent, GeolocationState> {
//   final GeolocationRepository _geoLocationRepository;
//   StreamSubscription? _geoLocationSubscription;
//
//   GeolocationBloc({required GeolocationRepository geoLocationRepository})
//       : _geoLocationRepository = geoLocationRepository,
//         super(GeolocationLoading()) {
//     on<LoadGeolocation>((event, emit) async {
//       _geoLocationSubscription?.cancel();
//       final Position position =
//           await _geoLocationRepository.getCurrentLocation();
//       add(UpdateGeolocation(position: position));
//     });
//     on<UpdateGeolocation>((event, emit) async {
//       emit(GeolocationLoaded(position: event.position));
//     });
//   }
//
//   @override
//   Future<void> close() {
//     _geoLocationSubscription?.cancel();
//     return super.close();
//   }
// }
