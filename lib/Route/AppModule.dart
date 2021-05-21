
import 'package:mobilecafe/Constants/ConstantAppRoute.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobilecafe/Screens/AppRouteWidgets/MainApp.dart';
import 'package:mobilecafe/Screens/Home/HomeScreen.dart';

class AppModule extends MainModule {

  // Provide a list of dependencies to inject into your project
  @override
  List<Bind> get binds => [];

  // Provide all the routes for your module
  @override
  List<ModularRouter> get routers => [
    ModularRouter(ConstantAppRoute.initialAppScreen, child: (_, __) => HomeScreen()),
  ];

  // Provide the root widget associated with your module
  // In this case, it's the widget you created in the first step
  @override
  Widget get bootstrap => ProviderScope(child: MainApp());
}