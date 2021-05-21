import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

import 'ExceptionUtils.dart';
import 'SizeUtils.dart';

class PlatformUtils {
  static final instance = PlatformUtils();

  PlatformUtils() {
    ExceptionUtils.instance.throwCanNotCreateObjectSingletonInstance();
  }

  Function getOsSpecifiedFunction(BuildContext context, {
    Function functionMobile,
    Function functionWeb,
  }) {
    Function _functionToExecute;

    if (kIsWeb) {
      _functionToExecute = functionWeb;
    } else if (Platform.isIOS || Platform.isAndroid) {
      _functionToExecute = functionMobile;
    }

    return _functionToExecute ?? _returnEmptyFunction;
  }

  Function getOsSizeSpecifiedFunction(BuildContext context, {
    Function functionSmallScreenSize,
    Function functionLargeScreen,
  }) {
    Function _functionToExecute;

    if(SizeUtils.instance.isLargeMobileScreenActive(context)) {
      _functionToExecute = functionLargeScreen;
    } else {
      _functionToExecute = functionSmallScreenSize;
    }

    return _functionToExecute ?? _returnEmptyFunction;
  }

  void _returnEmptyFunction() {

  }

  T getOsSpecifiedObject<T>(BuildContext context, {T objectMobile, T objectWeb}) {

    T objectToReturn;
    if (kIsWeb) {
      objectToReturn = objectWeb;
    } else if (Platform.isIOS || Platform.isAndroid) {
      objectToReturn = objectMobile;
    }

    return objectToReturn;
  }

  T getOsSizeSpecifiedObject<T>(BuildContext context, {T objectMobile, T objectWeb}) {

    T objectToReturn;
    if(SizeUtils.instance.isLargeMobileScreenActive(context)) {
      objectToReturn = objectWeb;
    } else {
      objectToReturn = objectMobile;
    }

    return objectToReturn;
  }
}
