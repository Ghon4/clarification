library app_constants;

import 'package:flutter/material.dart';

DateTime appDateTime = DateTime.now();

class AppConstants extends ChangeNotifier {
  factory AppConstants() => _singleton;
  AppConstants._internal();
  static final AppConstants _singleton = AppConstants._internal();
  static AppConstants get shared => _singleton;

  String? currentLanguageCode;

  List stories = [];

  String viewedOnBoarding = 'false';

}
