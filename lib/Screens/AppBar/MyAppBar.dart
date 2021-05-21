import 'package:flutter/material.dart';
import 'package:mobilecafe/Screens/CustomWidgets/CustomText.dart';

class MyAppBar extends AppBar {
  BuildContext context;
  double width;
  double height;
  MyAppBar({this.context}) {
    if(context != null) {
      width = MediaQuery.of(context).size.width;
      height = MediaQuery.of(context).size.height;
    }
  }

  static Widget getLogoWidget(BuildContext context, String appTheme) {
    
    return Container(
      child: CustomText.heading12Bold(context, "Flutter Architecture"),
    );
  }

  void dispose() {}

  AppBar getAppBar(
      BuildContext context,
      {Key key,
      Widget title,
      String appTheme}) {
    return AppBar(
        key: key,
        automaticallyImplyLeading: false,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            getLogoWidget(context, appTheme),
          ],
        ),
        //}),
        //backgroundColor: Theme.of(context).appBarTheme.color,
        elevation: 0.0,
        actions: <Widget>[
          /*GestureDetector(
            child: Image.asset(
              "assets/upload_icon_1.gif",
              scale: 1.5,
            ),
            //child:Image.asset("assets/upload_black.png"
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => UploadingContentListing()));
            },
          ),*/
          /// Deepika's code for Setting...

          /*GestureDetector(
            child: Image.asset(
              "assets/settings_tym.png",
              scale: 2.3,
              color: Theme.of(context).iconTheme.color,
            ),
            onTap: () {
              NavigatorUtils.moveToSettingsScreen(context);
            },
          ),*/
          SizedBox(
            width: 4.0,
          ),
        ]);
  }

  bool _isContentCountValid(int countOfDraftContent, int countOfSyncContent) {
    return (countOfDraftContent != null && countOfDraftContent > 0) ||
        (countOfSyncContent != null && countOfSyncContent > 0);
  }

  int _contentUploadCount(int countOfDraftContent, int countOfSyncContent) {
    int contentCount = 0;
    if (countOfDraftContent != null && countOfDraftContent > 0) {
      contentCount += countOfDraftContent;
    }
    if (countOfSyncContent != null && countOfSyncContent > 0) {
      contentCount += countOfSyncContent;
    }
    return contentCount;
  }
}
