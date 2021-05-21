import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobilecafe/Utils/AppEnums.dart';

part 'AppThemeMeta.freezed.dart';
part 'AppThemeMeta.g.dart';

@freezed
abstract class AppThemeMeta with _$AppThemeMeta {

  const AppThemeMeta._();
  const factory AppThemeMeta({EnumAppThemeParentBackground enumParentBackground, EnumAppThemeChildColor enumChildColor, EnumAppThemeFonts enumFont}) = _AppThemeMeta;

  factory AppThemeMeta.fromJson(Map<String, dynamic> json) => _$AppThemeMetaFromJson(json);

  AppThemeMeta getDefaultTheme() {
    return AppThemeMeta(enumParentBackground: EnumAppThemeParentBackground.LIGHT, enumChildColor: EnumAppThemeChildColor.SKY_BLUE, enumFont: EnumAppThemeFonts.ROBOTO);
  }
}
