import 'package:flutter/material.dart';
import 'package:mobilecafe/Screens/CustomWidgets/CustomText.dart';
import '../../Utils/ColorUtils.dart';

class CustomAppBar extends AppBar {
  Widget getAppBar(
    BuildContext context, {
    Key key,
    String title = "",
    IconData leadingIcon = Icons.arrow_back_ios,
    double iconSize = 20.0,
    double elevation = 1.0,
    List<Widget> actionWidget,
  }) {
    return PreferredSize(
      child: AppBar(
          elevation: elevation,
          titleSpacing: 0.0,
          centerTitle: true,
          leading: GestureDetector(
            child: Container(
                height: 50.0,
                width: 50.0,
                color: Colors.transparent,
                padding: EdgeInsets.all(4.0),
                child: Icon(
                  leadingIcon,
                  color: ColorUtils.primaryColor,
                  size: iconSize,
                )),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          title: CustomText.heading12Bold(context, 'App Bar Title'),
          actions: actionWidget),
      preferredSize: Size.fromHeight(48.0),
    );
  }
}
