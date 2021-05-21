// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'LanguageMeta.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
LanguageMeta _$LanguageMetaFromJson(Map<String, dynamic> json) {
  return _LanguageMeta.fromJson(json);
}

/// @nodoc
class _$LanguageMetaTearOff {
  const _$LanguageMetaTearOff();

// ignore: unused_element
  _LanguageMeta call({String name, String languageCode, String countryCode}) {
    return _LanguageMeta(
      name: name,
      languageCode: languageCode,
      countryCode: countryCode,
    );
  }

// ignore: unused_element
  LanguageMeta fromJson(Map<String, Object> json) {
    return LanguageMeta.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $LanguageMeta = _$LanguageMetaTearOff();

/// @nodoc
mixin _$LanguageMeta {
  String get name;
  String get languageCode;
  String get countryCode;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $LanguageMetaCopyWith<LanguageMeta> get copyWith;
}

/// @nodoc
abstract class $LanguageMetaCopyWith<$Res> {
  factory $LanguageMetaCopyWith(
          LanguageMeta value, $Res Function(LanguageMeta) then) =
      _$LanguageMetaCopyWithImpl<$Res>;
  $Res call({String name, String languageCode, String countryCode});
}

/// @nodoc
class _$LanguageMetaCopyWithImpl<$Res> implements $LanguageMetaCopyWith<$Res> {
  _$LanguageMetaCopyWithImpl(this._value, this._then);

  final LanguageMeta _value;
  // ignore: unused_field
  final $Res Function(LanguageMeta) _then;

  @override
  $Res call({
    Object name = freezed,
    Object languageCode = freezed,
    Object countryCode = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      languageCode: languageCode == freezed
          ? _value.languageCode
          : languageCode as String,
      countryCode:
          countryCode == freezed ? _value.countryCode : countryCode as String,
    ));
  }
}

/// @nodoc
abstract class _$LanguageMetaCopyWith<$Res>
    implements $LanguageMetaCopyWith<$Res> {
  factory _$LanguageMetaCopyWith(
          _LanguageMeta value, $Res Function(_LanguageMeta) then) =
      __$LanguageMetaCopyWithImpl<$Res>;
  @override
  $Res call({String name, String languageCode, String countryCode});
}

/// @nodoc
class __$LanguageMetaCopyWithImpl<$Res> extends _$LanguageMetaCopyWithImpl<$Res>
    implements _$LanguageMetaCopyWith<$Res> {
  __$LanguageMetaCopyWithImpl(
      _LanguageMeta _value, $Res Function(_LanguageMeta) _then)
      : super(_value, (v) => _then(v as _LanguageMeta));

  @override
  _LanguageMeta get _value => super._value as _LanguageMeta;

  @override
  $Res call({
    Object name = freezed,
    Object languageCode = freezed,
    Object countryCode = freezed,
  }) {
    return _then(_LanguageMeta(
      name: name == freezed ? _value.name : name as String,
      languageCode: languageCode == freezed
          ? _value.languageCode
          : languageCode as String,
      countryCode:
          countryCode == freezed ? _value.countryCode : countryCode as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_LanguageMeta with DiagnosticableTreeMixin implements _LanguageMeta {
  const _$_LanguageMeta({this.name, this.languageCode, this.countryCode});

  factory _$_LanguageMeta.fromJson(Map<String, dynamic> json) =>
      _$_$_LanguageMetaFromJson(json);

  @override
  final String name;
  @override
  final String languageCode;
  @override
  final String countryCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LanguageMeta(name: $name, languageCode: $languageCode, countryCode: $countryCode)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LanguageMeta'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('languageCode', languageCode))
      ..add(DiagnosticsProperty('countryCode', countryCode));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LanguageMeta &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.languageCode, languageCode) ||
                const DeepCollectionEquality()
                    .equals(other.languageCode, languageCode)) &&
            (identical(other.countryCode, countryCode) ||
                const DeepCollectionEquality()
                    .equals(other.countryCode, countryCode)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(languageCode) ^
      const DeepCollectionEquality().hash(countryCode);

  @JsonKey(ignore: true)
  @override
  _$LanguageMetaCopyWith<_LanguageMeta> get copyWith =>
      __$LanguageMetaCopyWithImpl<_LanguageMeta>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LanguageMetaToJson(this);
  }
}

abstract class _LanguageMeta implements LanguageMeta {
  const factory _LanguageMeta(
      {String name, String languageCode, String countryCode}) = _$_LanguageMeta;

  factory _LanguageMeta.fromJson(Map<String, dynamic> json) =
      _$_LanguageMeta.fromJson;

  @override
  String get name;
  @override
  String get languageCode;
  @override
  String get countryCode;
  @override
  @JsonKey(ignore: true)
  _$LanguageMetaCopyWith<_LanguageMeta> get copyWith;
}
