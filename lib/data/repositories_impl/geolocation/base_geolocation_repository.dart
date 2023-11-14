// import 'dart:developer';
//
// import 'package:geolocator/geolocator.dart';
/// abstract class for BaseGeolocationRepository and GeolocationRepositoryMock classes
// abstract class BaseGeolocationRepository {
//   Future<Position?> getCurrentLocation();
// }
//
// class GeolocationRepository extends BaseGeolocationRepository {
//   GeolocationRepository();
//
//   @override
//   Future<Position?> getCurrentLocation() async {
//     try {
//       final position = await Geolocator.getCurrentPosition(
//         desiredAccuracy: LocationAccuracy.high,
//         forceAndroidLocationManager: true,
//         timeLimit: const Duration(seconds: 10),
//       );
//       return position;
//     } catch (e) {
//       log('Geolocation Error: $e');
//       return null;
//     }
//   }
// }
