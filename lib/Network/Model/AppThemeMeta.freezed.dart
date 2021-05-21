// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'AppThemeMeta.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
AppThemeMeta _$AppThemeMetaFromJson(Map<String, dynamic> json) {
  return _AppThemeMeta.fromJson(json);
}

/// @nodoc
class _$AppThemeMetaTearOff {
  const _$AppThemeMetaTearOff();

// ignore: unused_element
  _AppThemeMeta call(
      {EnumAppThemeParentBackground enumParentBackground,
      EnumAppThemeChildColor enumChildColor,
      EnumAppThemeFonts enumFont}) {
    return _AppThemeMeta(
      enumParentBackground: enumParentBackground,
      enumChildColor: enumChildColor,
      enumFont: enumFont,
    );
  }

// ignore: unused_element
  AppThemeMeta fromJson(Map<String, Object> json) {
    return AppThemeMeta.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $AppThemeMeta = _$AppThemeMetaTearOff();

/// @nodoc
mixin _$AppThemeMeta {
  EnumAppThemeParentBackground get enumParentBackground;
  EnumAppThemeChildColor get enumChildColor;
  EnumAppThemeFonts get enumFont;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $AppThemeMetaCopyWith<AppThemeMeta> get copyWith;
}

/// @nodoc
abstract class $AppThemeMetaCopyWith<$Res> {
  factory $AppThemeMetaCopyWith(
          AppThemeMeta value, $Res Function(AppThemeMeta) then) =
      _$AppThemeMetaCopyWithImpl<$Res>;
  $Res call(
      {EnumAppThemeParentBackground enumParentBackground,
      EnumAppThemeChildColor enumChildColor,
      EnumAppThemeFonts enumFont});
}

/// @nodoc
class _$AppThemeMetaCopyWithImpl<$Res> implements $AppThemeMetaCopyWith<$Res> {
  _$AppThemeMetaCopyWithImpl(this._value, this._then);

  final AppThemeMeta _value;
  // ignore: unused_field
  final $Res Function(AppThemeMeta) _then;

  @override
  $Res call({
    Object enumParentBackground = freezed,
    Object enumChildColor = freezed,
    Object enumFont = freezed,
  }) {
    return _then(_value.copyWith(
      enumParentBackground: enumParentBackground == freezed
          ? _value.enumParentBackground
          : enumParentBackground as EnumAppThemeParentBackground,
      enumChildColor: enumChildColor == freezed
          ? _value.enumChildColor
          : enumChildColor as EnumAppThemeChildColor,
      enumFont:
          enumFont == freezed ? _value.enumFont : enumFont as EnumAppThemeFonts,
    ));
  }
}

/// @nodoc
abstract class _$AppThemeMetaCopyWith<$Res>
    implements $AppThemeMetaCopyWith<$Res> {
  factory _$AppThemeMetaCopyWith(
          _AppThemeMeta value, $Res Function(_AppThemeMeta) then) =
      __$AppThemeMetaCopyWithImpl<$Res>;
  @override
  $Res call(
      {EnumAppThemeParentBackground enumParentBackground,
      EnumAppThemeChildColor enumChildColor,
      EnumAppThemeFonts enumFont});
}

/// @nodoc
class __$AppThemeMetaCopyWithImpl<$Res> extends _$AppThemeMetaCopyWithImpl<$Res>
    implements _$AppThemeMetaCopyWith<$Res> {
  __$AppThemeMetaCopyWithImpl(
      _AppThemeMeta _value, $Res Function(_AppThemeMeta) _then)
      : super(_value, (v) => _then(v as _AppThemeMeta));

  @override
  _AppThemeMeta get _value => super._value as _AppThemeMeta;

  @override
  $Res call({
    Object enumParentBackground = freezed,
    Object enumChildColor = freezed,
    Object enumFont = freezed,
  }) {
    return _then(_AppThemeMeta(
      enumParentBackground: enumParentBackground == freezed
          ? _value.enumParentBackground
          : enumParentBackground as EnumAppThemeParentBackground,
      enumChildColor: enumChildColor == freezed
          ? _value.enumChildColor
          : enumChildColor as EnumAppThemeChildColor,
      enumFont:
          enumFont == freezed ? _value.enumFont : enumFont as EnumAppThemeFonts,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_AppThemeMeta extends _AppThemeMeta with DiagnosticableTreeMixin {
  const _$_AppThemeMeta(
      {this.enumParentBackground, this.enumChildColor, this.enumFont})
      : super._();

  factory _$_AppThemeMeta.fromJson(Map<String, dynamic> json) =>
      _$_$_AppThemeMetaFromJson(json);

  @override
  final EnumAppThemeParentBackground enumParentBackground;
  @override
  final EnumAppThemeChildColor enumChildColor;
  @override
  final EnumAppThemeFonts enumFont;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppThemeMeta(enumParentBackground: $enumParentBackground, enumChildColor: $enumChildColor, enumFont: $enumFont)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AppThemeMeta'))
      ..add(DiagnosticsProperty('enumParentBackground', enumParentBackground))
      ..add(DiagnosticsProperty('enumChildColor', enumChildColor))
      ..add(DiagnosticsProperty('enumFont', enumFont));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AppThemeMeta &&
            (identical(other.enumParentBackground, enumParentBackground) ||
                const DeepCollectionEquality().equals(
                    other.enumParentBackground, enumParentBackground)) &&
            (identical(other.enumChildColor, enumChildColor) ||
                const DeepCollectionEquality()
                    .equals(other.enumChildColor, enumChildColor)) &&
            (identical(other.enumFont, enumFont) ||
                const DeepCollectionEquality()
                    .equals(other.enumFont, enumFont)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(enumParentBackground) ^
      const DeepCollectionEquality().hash(enumChildColor) ^
      const DeepCollectionEquality().hash(enumFont);

  @JsonKey(ignore: true)
  @override
  _$AppThemeMetaCopyWith<_AppThemeMeta> get copyWith =>
      __$AppThemeMetaCopyWithImpl<_AppThemeMeta>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AppThemeMetaToJson(this);
  }
}

abstract class _AppThemeMeta extends AppThemeMeta {
  const _AppThemeMeta._() : super._();
  const factory _AppThemeMeta(
      {EnumAppThemeParentBackground enumParentBackground,
      EnumAppThemeChildColor enumChildColor,
      EnumAppThemeFonts enumFont}) = _$_AppThemeMeta;

  factory _AppThemeMeta.fromJson(Map<String, dynamic> json) =
      _$_AppThemeMeta.fromJson;

  @override
  EnumAppThemeParentBackground get enumParentBackground;
  @override
  EnumAppThemeChildColor get enumChildColor;
  @override
  EnumAppThemeFonts get enumFont;
  @override
  @JsonKey(ignore: true)
  _$AppThemeMetaCopyWith<_AppThemeMeta> get copyWith;
}
