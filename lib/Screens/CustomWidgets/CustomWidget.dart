
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mobilecafe/Constants/Constant.dart';
import 'package:mobilecafe/Utils/ColorUtils.dart';


class CustomWidget {

  static Widget customBackButton(BuildContext context, {Function functionToExecute, bool isNeedToFinish = true}) {
    return Container(
      child: IconButton(icon: Icon(Icons.arrow_back_ios), color: ColorUtils.whiteColor, onPressed: () {
        if(functionToExecute != null) {
          functionToExecute();
        }

        if(isNeedToFinish) {
          Navigator.pop(context);
        }
      }),
    );
  }

  static Widget getDivider({Color dividerColor = Colors.black}) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: Constant.appDefaultSpacingHalf,
        ),
        Divider(
          height: 5.0,
          color: dividerColor,
        ),
        SizedBox(
          height: Constant.appDefaultSpacingHalf,
        ),
      ],
    );
  }
}
