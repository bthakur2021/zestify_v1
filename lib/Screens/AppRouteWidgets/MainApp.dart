
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_screen_scaler/flutter_screen_scaler.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobilecafe/Constants/ConstantAppRoute.dart';
import 'package:mobilecafe/Localization/AppLanguageUtils.dart';
import 'package:mobilecafe/Provider/ProviderUtils.dart';
import 'package:mobilecafe/SharedPref/SharedPrefUtil.dart';

import '../../BaseState.dart';

ScreenScaler screenScalerGlobal;

class MainApp extends StatefulHookWidget {

  MainApp() {
    SharedPrefUtil.setAppUDID();
  }

  @override
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {

  bool _isFirstTimeScreenCalling = true;
  SharedPrefUtil prefs;
  String themeName;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    if (_isFirstTimeScreenCalling) {
      _isFirstTimeScreenCalling = false;
    }
  }

  @override
  Widget build(BuildContext context) {

    var _languageProvider = useProvider(appLanguageProvider);
    var _themeProvider = useProvider(themeProvider);

    _themeProvider.initializeThemeMetaData();
    _languageProvider.fetchLocale();

    var themeData = _themeProvider.getAppThemeData();

    return BaseState(
      child: MaterialApp(
        locale: _languageProvider.appLocale,
        supportedLocales: AppLanguageUtils.getAllAppSupportedLocale(),
        localizationsDelegates: [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        theme: themeData,
        debugShowCheckedModeBanner: false,
        initialRoute: ConstantAppRoute.initialAppScreen,
        navigatorKey: Modular.navigatorKey,
        onGenerateRoute: Modular.generateRoute,
      ),
    );
  }
}
