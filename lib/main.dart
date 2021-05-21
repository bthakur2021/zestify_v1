import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobilecafe/utils/AppUtils.dart';

import 'Localization/AppLanguageUtils.dart';
import 'Network/CustomHttpOverrides.dart';
import 'Route/AppModule.dart';

void main() {
  setupApp();
}

void setupApp() async {
  WidgetsFlutterBinding.ensureInitialized();

  await AppLanguageUtils().initialize();
  await AppUtils.initializeAppUtils();

  HttpOverrides.global = CustomHttpOverrides();

  runApp(ModularApp(module: AppModule()));
}
