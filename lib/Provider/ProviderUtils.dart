
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobilecafe/Localization/AppLanguageProvider.dart';
import 'package:mobilecafe/Provider/ThemeProvider.dart';

final appLanguageProvider = ChangeNotifierProvider<AppLanguageProvider>((ref) {
  return AppLanguageProvider();
});

final themeProvider = ChangeNotifierProvider<ThemeProvider>((ref) {
  return ThemeProvider();
});