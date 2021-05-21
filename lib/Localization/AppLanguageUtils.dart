import 'package:flutter/cupertino.dart';

import '../Network/Model/LanguageMeta.dart';
import '../SharedPref/SharedPrefUtil.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AppLanguageUtils {
  static var languageEnglish = LanguageMeta(
      name: 'English',
      languageCode: 'en',
      countryCode: 'US',);
  static var languageArabic = LanguageMeta(
      name: 'Arabic',
      languageCode: 'ar',
      countryCode: 'AR',);
  static var languageHindi = LanguageMeta(
      name: 'Hindi',
      languageCode: 'hi',
      countryCode: 'IN',);

  static var allLanguages = [languageEnglish, languageArabic, languageHindi];
  static var hmAllLanguages = <String, LanguageMeta>{};

  Future<void> initialize() async {
    allLanguages?.forEach((element) {
      hmAllLanguages[element.languageCode] = element;
    });
    await _initializeLanguageLocale();
  }

  Future<void> _initializeLanguageLocale() async {
    var languageDataSavedLocally = await SharedPrefUtil.getLanguageData();
    if (languageDataSavedLocally == null) {
      languageDataSavedLocally = languageEnglish;
      await SharedPrefUtil.saveLanguageData(languageDataSavedLocally);
    }
  }

  static List<Locale> getAllAppSupportedLocale() {
    var _listOfLocale = <Locale>[];
    allLanguages.forEach((element) {
      _listOfLocale.add(Locale(element.languageCode, element.countryCode));
    });

    return _listOfLocale;
  }

  static List<String> getAllAppSupportedLanguageCode() {
    var _listOfLanguageSupported = <String>[];
    allLanguages.forEach((element) {
      _listOfLanguageSupported.add(element.languageCode);
    });

    return _listOfLanguageSupported;
  }

  static LanguageMeta getLanguage(String languageCode) {
    return hmAllLanguages[languageCode] ?? languageEnglish;
  }

  static AppLocalizations getLocalization(BuildContext context) {
    return AppLocalizations.of(context);
  }
}
