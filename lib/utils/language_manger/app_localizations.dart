import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppLocalizations {
  final Locale? locale;
  AppLocalizations({
    this.locale,
  });

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  late Map<String, dynamic> _localizedStrings;

  Future loadJsonLanguage() async {
    String jsonString =
        await rootBundle.loadString("assets/lang/${locale?.languageCode}.json");

    Map<String, dynamic> jsonMap = json.decode(jsonString);
    _localizedStrings = jsonMap;
  }

  String translate(String key) {
    final keys = key.split('.');
    dynamic result = _localizedStrings;

    for (final k in keys) {
      if (result is Map<String, dynamic> && result.containsKey(k)) {
        result = result[k];
      } else {
        return "";
      }
    }
    return result.toString();
  }
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();
  @override
  bool isSupported(Locale locale) {
    return ['de', 'en', 'fr', 'it'].contains(locale.languageCode);
  }

  @override
  Future<AppLocalizations> load(Locale locale) async {
    AppLocalizations localizations = AppLocalizations(locale: locale);
    await localizations.loadJsonLanguage();
    return localizations;
  }

  @override
  bool shouldReload(covariant LocalizationsDelegate<AppLocalizations> old) =>
      false;
}

extension TranslateX on String {
  String tr(BuildContext context) {
    return AppLocalizations.of(context)!.translate(this);
  }
}
