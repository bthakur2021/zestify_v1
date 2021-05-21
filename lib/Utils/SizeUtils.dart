

import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screen_scaler/flutter_screen_scaler.dart';
import 'package:mobilecafe/Screens/AppRouteWidgets/MainApp.dart';

import 'AppUtils.dart';
import 'Constant.dart';
import 'ExceptionUtils.dart';

class SizeUtils {

  static final instance = SizeUtils();

  final deviceSize = _DeviceSize();

  final double _leftMenuSize = 4;
  final double _pinnedMenuSize = 23;

  final double appDefaultSpacing = 16.0;
  final double appDefaultSpacingSemiHalf = 12.0;
  final double appDefaultSpacingHalf = 8.0;

  final double appListSeparatorHeight = 6.0;
  final double appSearchBarHeight = 56.0;
  final double appIconSize = 22.0;

  final double cardRadius = 4.0;

  SizeUtils() {
    ExceptionUtils.instance.throwCanNotCreateObjectSingletonInstance();
  }

  static ScreenScaler getScreenScaler() {
    return screenScalerGlobal;
  }

  bool isLargeScreenActive(BuildContext context) {
    return isLargeMobileScreenActive(context);
  }

  bool isLargeMobileScreenActive(BuildContext context) {

    var size = MediaQuery.of(context).size;
    var width = size.width > size.height ? size.height : size.width;

    return width > 600;
  }

  BorderRadius getCircularBorderRadius({double radius = Constant.appDefaultSpacingHalf}) => getScreenScaler().getBorderRadiusCircular(radius);

  double getMainNavigationViewWidth(BuildContext context) {
    if (isLargeScreenActive(context)) {
      return _leftMenuSize;
    }
    return 100;
  }

  double getPinnedViewWidth(BuildContext context) {
    if (isLargeScreenActive(context)) {
      return _pinnedMenuSize;
    }

    /*else if (Platform.isIOS || Platform.isAndroid) {
      return 100;
    }*/
    return 100;
  }

  double getMainNavigationMenuWidth(BuildContext context) {
    var width = getMainNavigationViewWidth(context);
    return getScreenScaler().getWidth(width);
  }

  double getGridMenuWidth() {
    if (kIsWeb) {
      return getScreenScaler().getWidth(_pinnedMenuSize);
    } else if (Platform.isIOS || Platform.isAndroid) {
      return getScreenScaler().getWidth(100);
    }
    return getScreenScaler().getWidth(100);
  }

  GridViewMetaData getGridMetaData() {
    var _parentWidth = getGridMenuWidth();
    var _menuGridViewMetaData = GridViewMetaData();

    _menuGridViewMetaData.width = _parentWidth / 4;
    _menuGridViewMetaData.height = _menuGridViewMetaData.width;

    return _menuGridViewMetaData;
  }
}

class _DeviceSize {

}

class GridViewMetaData {
  double width;
  double height;
}