// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'android.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Android _$AndroidFromJson(Map json) {
  $checkKeys(
    json,
    disallowNullValues: const [
      'resValues',
      'buildConfigFields',
      'manifestPlaceholders'
    ],
  );
  return Android(
    flavorDimensions: json['flavorDimensions'] as String? ?? 'flavor-type',
    resValues: (json['resValues'] as Map?)?.map(
          (k, e) => MapEntry(k as String,
              ResValue.fromJson(Map<String, dynamic>.from(e as Map))),
        ) ??
        {},
    buildConfigFields: (json['buildConfigFields'] as Map?)?.map(
          (k, e) => MapEntry(k as String,
              BuildConfigField.fromJson(Map<String, dynamic>.from(e as Map))),
        ) ??
        {},
    manifestPlaceholders: (json['manifestPlaceholders'] as Map?)?.map(
          (k, e) => MapEntry(k as String, e as String),
        ) ??
        {},
  );
}
