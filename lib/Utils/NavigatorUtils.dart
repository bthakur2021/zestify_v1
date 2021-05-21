
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavigatorUtils {

  static void moveToDashBoard(BuildContext context) {
    Navigator.popUntil(context, ModalRoute.withName('/'));
  }

  static void pushNamedDashBoard(BuildContext context) {
    Navigator.pushNamed(context, '/');
  }
}
