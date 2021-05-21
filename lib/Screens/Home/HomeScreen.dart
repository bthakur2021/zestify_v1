
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screen_scaler/flutter_screen_scaler.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobilecafe/Hooks/HookScreenTypeLayout.dart';
import 'package:mobilecafe/Provider/ProviderUtils.dart';
import 'package:mobilecafe/Provider/ThemeProvider.dart';
import 'package:mobilecafe/Screens/AppRouteWidgets/MainApp.dart';
import 'package:mobilecafe/Screens/preview/app_preview.dart';

import 'HomeMobileScreen.dart';
import 'HomeWebScreen.dart';

class HomeScreen extends StatefulHookWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  ThemeProvider _themeProvider;
  ThemeData _themeData;

  @override
  Widget build(BuildContext context) {
    _themeProvider = useProvider(themeProvider);
    _themeProvider.initializeThemeMetaData();
    _themeData = _themeProvider.getAppThemeData();

    screenScalerGlobal = ScreenScaler()..init(context);

    return Scaffold(
      resizeToAvoidBottomInset: false, // set it to false
      body: _getMainWidget(),
    );
  }

  Widget _getMainWidget() {
    // var _mobileLayout = HomeMobileScreen();
    // var _webLayout = HomeWebScreen();

    var _commonWidget = ThemePreviewApp(theme: _themeData,);

    var _widgetScreenLayout = useScreenTypeLayout(
      sharedLayout: _commonWidget,
    );
    return _widgetScreenLayout;
  }
}
