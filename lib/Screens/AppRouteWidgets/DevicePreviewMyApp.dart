import 'package:device_preview/device_preview.dart';
import 'package:device_preview/plugins.dart';
import 'package:mobilecafe/Localization/AppLanguageUtils.dart';
import 'package:mobilecafe/Screens/AppRouteWidgets/MainApp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class DevicePreviewMyApp extends HookWidget {
  const DevicePreviewMyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      textDirection: TextDirection.ltr,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        /*Expanded(
        child: Container(color: Colors.red),
      ),*/
        Expanded(
          child: DevicePreview(
            enabled: true,
            plugins: [
              const ScreenshotPlugin(),
              const FileExplorerPlugin(),
              const SharedPreferencesExplorerPlugin(),
            ],
            availableLocales: AppLanguageUtils.getAllAppSupportedLocale(),
            builder: (context) => MainApp(),
          ),
        ),
      ],
    );
  }
}