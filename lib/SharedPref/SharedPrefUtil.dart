import 'dart:async';
import 'dart:convert';

import 'package:flutter_udid/flutter_udid.dart';
import 'package:mobilecafe/Network/Model/AppThemeMeta.dart';
import 'package:mobilecafe/Network/Model/LanguageMeta.dart';

import 'package:shared_preferences/shared_preferences.dart';

enum AppMetaDataType { MetaData, IpData }

class SharedPrefUtil {
  static const String _KEY_LOGIN_DATA = "loginData";
  static const String _THEME = "appTheme";
  static const String _KEY_APP_UDID = "appUDID";
  static const _KEY_LANGUAGE = 'appAllLanguages';

  static List<String> alSpKeysToRemove = [
    _KEY_LOGIN_DATA,
    _KEY_APP_UDID,
    _THEME
  ];

  static Future<bool> _saveAppThemeDataJson(var _jsonToSave) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_THEME, _jsonToSave);
    return true;
  }

  static Future<bool> saveAppTheme(AppThemeMeta themeMetaData) async {
    try {
      var res = themeMetaData.toJson();
      var jsonLogin = json.encode(res);
      if (themeMetaData != null) {
        await _saveAppThemeDataJson(jsonLogin);
        return true;
      } else {
        return false;
      }
    } catch (e) {
      return false;
    }
  }

  static Future<AppThemeMeta> getAppTheme() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      String objectSP = prefs.getString(_THEME);

      Map<String, dynamic> mapSP = json.decode(objectSP);

      var objectToReturn = AppThemeMeta.fromJson(mapSP);
      return objectToReturn;

    } catch (e) {
      return AppThemeMeta().getDefaultTheme();
    }
  }

  ///
  /// App UDID related Methods - START
  ///
  static Future<bool> setAppUDID() async {
    try {
      String dataToSave = await FlutterUdid.consistentUdid;
      if (dataToSave != null) {
        final prefs = await SharedPreferences.getInstance();
        prefs.setString(_KEY_APP_UDID, dataToSave);
        return true;
      } else {
        return false;
      }
    } catch (e) {
      return false;
    }
  }

  static Future<String> getAppUDID() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      String spData = prefs.getString(_KEY_APP_UDID);

      return spData;
    } catch (e) {}
    return await FlutterUdid.consistentUdid;
  }

  ///
  /// App UDID related Methods - END
  ///

  ///
  /// Language Related Methods - START
  ///

  static Future<bool> _saveLanguageDataJson(var _jsonToSave) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_KEY_LANGUAGE, _jsonToSave);
    return true;
  }

  static Future<bool> saveLanguageData(LanguageMeta objectToSave) async {
    var res = objectToSave.toJson();
    var jsonLogin = json.encode(res);
    if (objectToSave != null) {
      await _saveLanguageDataJson(jsonLogin);
      return true;
    } else {
      return false;
    }
  }

  static Future<LanguageMeta> getLanguageData() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      var objectSP = prefs.getString(_KEY_LANGUAGE);

      Map<String, dynamic> mapSP = json.decode(objectSP);

      var objectToReturn = LanguageMeta.fromJson(mapSP);
      return objectToReturn;
    } catch (e) {
      e.toString();
    }
    return null;
  }

///
/// Language Related Methods - END
///

}
