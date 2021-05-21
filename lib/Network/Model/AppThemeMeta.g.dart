// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'AppThemeMeta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AppThemeMeta _$_$_AppThemeMetaFromJson(Map<String, dynamic> json) {
  return _$_AppThemeMeta(
    enumParentBackground: _$enumDecodeNullable(
        _$EnumAppThemeParentBackgroundEnumMap, json['enumParentBackground']),
    enumChildColor: _$enumDecodeNullable(
        _$EnumAppThemeChildColorEnumMap, json['enumChildColor']),
    enumFont:
        _$enumDecodeNullable(_$EnumAppThemeFontsEnumMap, json['enumFont']),
  );
}

Map<String, dynamic> _$_$_AppThemeMetaToJson(_$_AppThemeMeta instance) =>
    <String, dynamic>{
      'enumParentBackground':
          _$EnumAppThemeParentBackgroundEnumMap[instance.enumParentBackground],
      'enumChildColor':
          _$EnumAppThemeChildColorEnumMap[instance.enumChildColor],
      'enumFont': _$EnumAppThemeFontsEnumMap[instance.enumFont],
    };

T _$enumDecode<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }

  final value = enumValues.entries
      .singleWhere((e) => e.value == source, orElse: () => null)
      ?.key;

  if (value == null && unknownValue == null) {
    throw ArgumentError('`$source` is not one of the supported values: '
        '${enumValues.values.join(', ')}');
  }
  return value ?? unknownValue;
}

T _$enumDecodeNullable<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source, unknownValue: unknownValue);
}

const _$EnumAppThemeParentBackgroundEnumMap = {
  EnumAppThemeParentBackground.LIGHT: 'LIGHT',
  EnumAppThemeParentBackground.DIM: 'DIM',
  EnumAppThemeParentBackground.DARK: 'DARK',
};

const _$EnumAppThemeChildColorEnumMap = {
  EnumAppThemeChildColor.SKY_BLUE: 'SKY_BLUE',
  EnumAppThemeChildColor.DARK_YELLOW: 'DARK_YELLOW',
  EnumAppThemeChildColor.FLOWER_RED: 'FLOWER_RED',
  EnumAppThemeChildColor.OCTOPUS_VIOLET: 'OCTOPUS_VIOLET',
  EnumAppThemeChildColor.FIRE_ORANGE: 'FIRE_ORANGE',
  EnumAppThemeChildColor.GUAVA_GREEN: 'GUAVA_GREEN',
};

const _$EnumAppThemeFontsEnumMap = {
  EnumAppThemeFonts.ABEL: 'ABEL',
  EnumAppThemeFonts.ACTOR: 'ACTOR',
  EnumAppThemeFonts.BILBO: 'BILBO',
  EnumAppThemeFonts.HIND: 'HIND',
  EnumAppThemeFonts.LATO: 'LATO',
  EnumAppThemeFonts.ROBOTO: 'ROBOTO',
  EnumAppThemeFonts.ZEYADA: 'ZEYADA',
};
