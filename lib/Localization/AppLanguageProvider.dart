import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobilecafe/Provider/ProviderUtils.dart';
import 'package:mobilecafe/utils/AppEnums.dart';

import '../Network/Model/LanguageMeta.dart';
import '../SharedPref/SharedPrefUtil.dart';
import 'AppLanguageUtils.dart';

class AppLanguageProvider extends ChangeNotifier {
  Locale _appLocale;

  Locale get appLocale => _appLocale ?? getLocale(AppLanguageUtils.languageEnglish.languageCode, AppLanguageUtils.languageEnglish.languageCode);

  void fetchLocale() async {
    var prefs = await SharedPrefUtil.getLanguageData();
    if(prefs == null) {
      prefs = AppLanguageUtils.languageEnglish;
      await SharedPrefUtil.saveLanguageData(prefs);
    }

    _appLocale = getLocale(prefs.languageCode, prefs.countryCode);
  }


  void _changeLanguage(String languageCode) async {
    LanguageMeta _languageMeta = AppLanguageUtils.getLanguage(languageCode);
    Locale toChangeLocale = getLocale(_languageMeta.languageCode, _languageMeta.countryCode);

    if (_appLocale == toChangeLocale) {
      return;
    }

    _appLocale = getLocale(toChangeLocale.languageCode, toChangeLocale.countryCode);

    await SharedPrefUtil.saveLanguageData(_languageMeta);

    notifyListeners();
  }

  static Locale getLocale(String languageCode, String countryCode) => Locale(languageCode, countryCode);

  static changeAppLanguageRead(BuildContext context, String languageCode) => context.read(appLanguageProvider)._changeLanguage(languageCode);
}
