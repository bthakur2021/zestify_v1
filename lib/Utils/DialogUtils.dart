import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'ColorUtils.dart';

class DialogUtils {
  static AlertDialog _progress;

  static void showProgress(context, {String msg}) {
    if (context == null) {
      return;
    }
    msg ??= AppLocalizations.of(context).language;

    if (_progress == null) {
      var bodyProgress = Row(
        crossAxisAlignment: CrossAxisAlignment.center,
//        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          CircularProgressIndicator(
            backgroundColor: ColorUtils.greyColor.withOpacity(0.5),
            value: null,
            valueColor: AlwaysStoppedAnimation<Color>(
                ColorUtils.greyColor.withOpacity(0.5)),
            strokeWidth: 2.0,
          ),
          Container(
            margin: const EdgeInsets.only(left: 25.0),
            child: Text(
              msg,
              style: TextStyle(color: ColorUtils.greyColor),
            ),
          ),
        ],
      );
      _progress = AlertDialog(
        content: bodyProgress,
      );
    }

    showDialog(
        context: context,
        builder: (context) {
          return _progress;
        },
        barrierDismissible: true);
  }

  static void hideProgress(context) {
    if (context == null) {
      return;
    }
    if (_progress != null) {
      Navigator.pop(context);
      _progress = null;
    }
  }

  static void showMessageDialog(BuildContext context, String msg) {

    var dialog = AlertDialog(
      content: Text(
        msg,
        style: TextStyle(color: Colors.blue),
      ),
      actions: <Widget>[
        FlatButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
                'ok',
                style: TextStyle(color: Colors.blue)))
      ],
    );
    showDialog(
      context: context,
      builder: (context) {
        return dialog;
      },
    );
  }
}
