import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'LanguageMeta.freezed.dart';
part 'LanguageMeta.g.dart';

@freezed
abstract class LanguageMeta with _$LanguageMeta {
  const factory LanguageMeta({String name, String languageCode, String countryCode}) = _LanguageMeta;

  factory LanguageMeta.fromJson(Map<String, dynamic> json) => _$LanguageMetaFromJson(json);
}