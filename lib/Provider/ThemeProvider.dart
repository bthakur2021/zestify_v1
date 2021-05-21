import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobilecafe/Network/Model/AppThemeMeta.dart';
import 'package:mobilecafe/Provider/ProviderUtils.dart';
import 'package:mobilecafe/Utils/AppEnums.dart';
import 'package:mobilecafe/Utils/ThemeUtils.dart';

import '../SharedPref/SharedPrefUtil.dart';

class ThemeProvider extends ChangeNotifier {
  AppThemeMeta _themeModel;
  ThemeData _themeData;

  void initializeThemeMetaData() async {
    _themeModel = await SharedPrefUtil.getAppTheme();
    _themeData = _getAppThemeModel();

    notifyListeners();
  }

  void _setTheme(AppThemeMeta _appThemeMeta) async {
    if (_appThemeMeta == null) return;

    await SharedPrefUtil.saveAppTheme(_appThemeMeta);

    initializeThemeMetaData();
  }

  void setAppThemeParentBackground(
      EnumAppThemeParentBackground enumParentBackground) async {
    if (enumParentBackground == null) return;

    _themeModel =
        _themeModel.copyWith(enumParentBackground: enumParentBackground);

    _setTheme(_themeModel);
  }

  void setAppThemeChildColor(EnumAppThemeChildColor enumChildColor) async {
    if (enumChildColor == null) return;

    _themeModel = _themeModel.copyWith(enumChildColor: enumChildColor);

    _setTheme(_themeModel);
  }

  void setAppThemeFont(EnumAppThemeFonts _enumFont) async {
    if (_enumFont == null) return;

    _themeModel = _themeModel.copyWith(enumFont: _enumFont);

    _setTheme(_themeModel);
  }

  ThemeData _getAppThemeModel() {
    var _themeUtilsData = ThemeUtils.instance;
    _themeUtilsData.initialize(_themeModel);

    return ThemeData(
      brightness: _themeUtilsData.brightness,
      fontFamily: GoogleFonts.oswald().fontFamily,
      primaryColor: _themeUtilsData.primaryColor,
      primaryColorLight: _themeUtilsData.primaryColor,
      primaryColorDark: _themeUtilsData.primaryColor,
      accentColor: _themeUtilsData.primaryColor.withOpacity(0.8),
      selectedRowColor: _themeUtilsData.primaryColor,
      toggleableActiveColor: _themeUtilsData.primaryColor,
      unselectedWidgetColor: _themeUtilsData.disabledColor,
      indicatorColor: _themeUtilsData.primaryColor,
      cardColor: _themeUtilsData.cardColor,
      backgroundColor: _themeUtilsData.backgroundColor,
      dialogBackgroundColor: _themeUtilsData.dialogBackgroundColor,
      shadowColor: _themeUtilsData.shadowColor,
      scaffoldBackgroundColor: _themeUtilsData.scaffoldBackgroundColor,
      bottomAppBarColor: _themeUtilsData.bottomAppBarColor,
      focusColor: _themeUtilsData.focusColor,
      hoverColor: _themeUtilsData.hoverColor,
      highlightColor: _themeUtilsData.highlightColor,
      splashColor: _themeUtilsData.splashColor,
      disabledColor: _themeUtilsData.disabledColor,
      buttonColor: _themeUtilsData.buttonColor,
      dividerColor: _themeUtilsData.dividerColor,
      hintColor: _themeUtilsData.hintColor,
      errorColor: _themeUtilsData.errorColor,
      textTheme: TextTheme(
        headline1: _themeUtilsData.textStyleHeading,
        headline2: _themeUtilsData.textStyleHeading,
        headline3: _themeUtilsData.textStyleHeading,
        headline4: _themeUtilsData.textStyleHeading,
        headline5: _themeUtilsData.textStyleHeading,
        headline6: _themeUtilsData.textStyleHeading,
        bodyText1: _themeUtilsData.textStyleBody,
        bodyText2: _themeUtilsData.textStyleBody,
        subtitle1: _themeUtilsData.textStyleSubTitle,
        subtitle2: _themeUtilsData.textStyleSubTitle,
      ),
      textButtonTheme: _themeUtilsData.textButtonThemeData,
      outlinedButtonTheme: _themeUtilsData.outlinedButtonThemeData,
      elevatedButtonTheme: _themeUtilsData.elevatedButtonThemeData,
      floatingActionButtonTheme: _themeUtilsData.floatingActionButtonThemeData,
      /*buttonTheme: ButtonThemeData(
          buttonColor: Colors.transparent,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4.0),
              side: BorderSide(color: _themeUtilsData.primaryColor)),
        ),*/
      iconTheme: IconThemeData(color: _themeUtilsData.primaryColor),
      appBarTheme: AppBarTheme(
        color: _themeUtilsData.primaryColor,
        elevation: 0.4,
      ),
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: _themeUtilsData.cursorColor,
        selectionColor: _themeUtilsData.primaryColor,
      ),
      sliderTheme: SliderThemeData(
        activeTickMarkColor: _themeUtilsData.sliderActiveColor,
        inactiveTickMarkColor: _themeUtilsData.sliderInActiveColor,
        disabledActiveTickMarkColor: _themeUtilsData.sliderInActiveColor,
        activeTrackColor: _themeUtilsData.sliderActiveColor,
        inactiveTrackColor: _themeUtilsData.sliderInActiveColor,
        disabledActiveTrackColor:
            _themeUtilsData.sliderActiveColor.withOpacity(0.5),
        disabledInactiveTickMarkColor: _themeUtilsData.sliderInActiveColor,
        thumbColor: _themeUtilsData.sliderActiveColor,
        overlayColor: _themeUtilsData.sliderActiveColor.withOpacity(0.5),
      ),
    );
  }

  AppThemeMeta getAppTheme() => _themeModel;

  ThemeData getAppThemeData() => _themeData;

  static changeAppThemeParentRead(BuildContext context,
          EnumAppThemeParentBackground _changeThemeParent) =>
      context
          .read(themeProvider)
          .setAppThemeParentBackground(_changeThemeParent);

  static changeAppThemeChildColorRead(
          BuildContext context, EnumAppThemeChildColor _changeColor) =>
      context.read(themeProvider).setAppThemeChildColor(_changeColor);

  static changeAppThemeFontRead(
          BuildContext context, EnumAppThemeFonts _enumFont) =>
      context.read(themeProvider).setAppThemeFont(_enumFont);
}
