import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobilecafe/Network/Model/AppThemeMeta.dart';

import 'AppEnums.dart';
import 'ColorUtils.dart';

class ThemeUtils {
  static ThemeUtils instance = ThemeUtils();

  AppThemeMeta _themeModel;

  ///
  /// Parent Theme Data Related Properties - START
  ///
  Brightness brightness;
  Color scaffoldBackgroundColor;
  Color backgroundColor;
  Color cardColor;
  Color dialogBackgroundColor;
  Color textColorHeading;
  Color textColorBody;
  Color textColorSubTitle;
  Color cursorColor;

  ///
  /// Parent Theme Data Related Properties - END
  ///

  ///
  /// Child Color Theme Data Related Properties - START
  ///
  Color primaryColor;
  Color shadowColor;
  Color bottomAppBarColor;
  Color focusColor;
  Color hoverColor;
  Color highlightColor;
  Color splashColor;
  Color disabledColor;
  Color buttonColor;
  Color sliderActiveColor;
  Color sliderInActiveColor;

  ///
  /// Child Color Theme Data Related Properties - END
  ///

  ///
  /// Common Theme Data Related Properties - START
  ///
  Color dividerColor;
  Color hintColor;
  Color errorColor;
  TextStyle textStyleHeading;
  TextStyle textStyleBody;
  TextStyle textStyleSubTitle;
  TextButtonThemeData textButtonThemeData;
  OutlinedButtonThemeData outlinedButtonThemeData;
  ElevatedButtonThemeData elevatedButtonThemeData;
  FloatingActionButtonThemeData floatingActionButtonThemeData;

  ///
  /// Common Theme Data Related Properties - START
  ///

  ///
  /// Font Theme Data Related Properties - START
  /// 
  TextStyle _fontSet;
  ///
  /// Font Theme Data Related Properties - END
  /// 
  
  void initialize(AppThemeMeta _themeModel) {
    this._themeModel = _themeModel;
    _setFont();
    _setParentThemeData();
    _setChildColorThemeData();
    _setCommonThemeData();
  }

  void _setFont() {
    switch (_themeModel?.enumFont) {
      case EnumAppThemeFonts.ABEL:
        _fontSet = GoogleFonts.abel();
        break;
      case EnumAppThemeFonts.ACTOR:
        _fontSet = GoogleFonts.actor();
        break;
      case EnumAppThemeFonts.BILBO:
        _fontSet = GoogleFonts.bilbo();
        break;
      case EnumAppThemeFonts.HIND:
        _fontSet = GoogleFonts.hind();
        break;
      case EnumAppThemeFonts.LATO:
        _fontSet = GoogleFonts.lato();
        break;
      case EnumAppThemeFonts.ROBOTO:
        _fontSet = GoogleFonts.roboto();
        break;
      case EnumAppThemeFonts.ZEYADA:
        _fontSet = GoogleFonts.zeyada();
        break;
    }
  }
  
  void _setParentThemeData() {
    switch (_themeModel?.enumParentBackground) {
      case EnumAppThemeParentBackground.LIGHT:
        var _commonTextColor = ColorUtils.blackColor.withOpacity(0.8);
        var _commonBackgroundColor = ColorUtils.whiteColor;

        brightness = Brightness.light;
        scaffoldBackgroundColor = _commonBackgroundColor.withOpacity(0.9);
        backgroundColor = _commonBackgroundColor.withOpacity(0.9);
        cardColor = _commonBackgroundColor;
        dialogBackgroundColor = _commonBackgroundColor;
        textColorHeading = _commonTextColor;
        textColorBody = _commonTextColor;
        textColorSubTitle = ColorUtils.greyColor;
        cursorColor = _commonTextColor;

        break;
      case EnumAppThemeParentBackground.DIM:
        var _commonTextColor = ColorUtils.whiteColor.withOpacity(0.8);
        var _commonBackgroundColor = ColorUtils.backgroundColorDark;

        brightness = Brightness.dark;
        scaffoldBackgroundColor = _commonBackgroundColor;
        backgroundColor = _commonBackgroundColor;
        cardColor = _commonBackgroundColor;
        dialogBackgroundColor = _commonBackgroundColor;
        textColorHeading = _commonTextColor;
        textColorBody = _commonTextColor;
        textColorSubTitle = ColorUtils.greyColor;
        cursorColor = _commonTextColor;

        break;
      case EnumAppThemeParentBackground.DARK:
        var _commonTextColor = ColorUtils.whiteColor;
        var _commonBackgroundColor = ColorUtils.blackColor;

        brightness = Brightness.dark;
        scaffoldBackgroundColor = _commonBackgroundColor.withOpacity(0.9);
        backgroundColor = _commonBackgroundColor.withOpacity(0.9);
        cardColor = _commonBackgroundColor;
        dialogBackgroundColor = _commonBackgroundColor;
        textColorHeading = _commonTextColor;
        textColorBody = _commonTextColor;
        textColorSubTitle = ColorUtils.greyColor;
        cursorColor = _commonTextColor;

        break;
    }
  }

  void _setChildColorThemeData() {
    switch (_themeModel?.enumChildColor) {
      case EnumAppThemeChildColor.SKY_BLUE:
        _setChildColorThemeDataValues(ColorUtils.themeChildColorSkyBlue);
        break;
      case EnumAppThemeChildColor.DARK_YELLOW:
        _setChildColorThemeDataValues(ColorUtils.themeChildColorDarkYellow);
        break;
      case EnumAppThemeChildColor.FLOWER_RED:
        _setChildColorThemeDataValues(ColorUtils.themeChildColorFlowerRed);
        break;
      case EnumAppThemeChildColor.OCTOPUS_VIOLET:
        _setChildColorThemeDataValues(ColorUtils.themeChildColorOctopusViolet);
        break;
      case EnumAppThemeChildColor.FIRE_ORANGE:
        _setChildColorThemeDataValues(ColorUtils.themeChildColorFireOrange);
        break;
      case EnumAppThemeChildColor.GUAVA_GREEN:
        _setChildColorThemeDataValues(ColorUtils.themeChildColorGuavaGreen);
        break;
    }
  }

  void _setChildColorThemeDataValues(Color _setThemeColor) {
    primaryColor = _setThemeColor;
    shadowColor = _setThemeColor.withOpacity(0.7);
    bottomAppBarColor = _setThemeColor;
    focusColor = _setThemeColor;
    hoverColor = _setThemeColor.withOpacity(0.8);
    highlightColor = _setThemeColor.withOpacity(0.8);
    splashColor = _setThemeColor.withOpacity(0.8);
    disabledColor = _setThemeColor.withOpacity(0.5);
    buttonColor = _setThemeColor;
    sliderActiveColor = _setThemeColor;
    sliderInActiveColor = ColorUtils.dividerColor;
  }

  void _setCommonThemeData() {
    dividerColor = ColorUtils.dividerColor;
    hintColor = ColorUtils.dividerColor;
    errorColor = ColorUtils.redColor;
    textStyleHeading = getTextStyle(textColorHeading);
    textStyleBody = getTextStyle(textColorBody);
    textStyleSubTitle = getTextStyle(textColorSubTitle);
    textButtonThemeData = TextButtonThemeData(style: _getTextButtonStyle());
    outlinedButtonThemeData =
        OutlinedButtonThemeData(style: _getOutlineButtonStyle());
    elevatedButtonThemeData =
        ElevatedButtonThemeData(style: _getElevatedButtonStyle());
    floatingActionButtonThemeData = FloatingActionButtonThemeData();
  }

  TextStyle getTextStyle(Color _textColor) {
    return TextStyle(
      color: _textColor,
      fontFamily: _fontSet?.fontFamily,
      fontStyle: _fontSet?.fontStyle,
    );
  }

  ButtonStyle _getTextButtonStyle() {
    return OutlinedButton.styleFrom(
      primary: textColorHeading,
      backgroundColor: primaryColor,
      elevation: 2.0,
      shadowColor: shadowColor,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.0),
          side: BorderSide(color: primaryColor)),
    );
  }

  ButtonStyle _getOutlineButtonStyle() {
    return TextButton.styleFrom(
      primary: textColorHeading,
      backgroundColor: primaryColor,
      elevation: 2.0,
      shadowColor: shadowColor,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.0),
          side: BorderSide(color: primaryColor)),
    );
  }

  ButtonStyle _getElevatedButtonStyle() {
    return ElevatedButton.styleFrom(
      primary: primaryColor,
      elevation: 2.0,
      shadowColor: shadowColor,

      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.0),
          side: BorderSide(color: primaryColor)),
    );
  }
}
