/*
 * Copyright (c) 2024 Angelo Cassano
 *
 * Permission is hereby granted, free of charge, to any person
 * obtaining a copy of this software and associated documentation
 * files (the "Software"), to deal in the Software without
 * restriction, including without limitation the rights to use,
 * copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the
 * Software is furnished to do so, subject to the following
 * conditions:
 *
 * The above copyright notice and this permission notice shall be
 * included in all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
 * EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
 * OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
 * NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
 * HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
 * WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
 * OTHER DEALINGS IN THE SOFTWARE.
 */

import 'package:flutter_flavorizr/src/parser/models/flavors/android/build_config_field.dart';
import 'package:flutter_flavorizr/src/parser/models/flavors/android/res_value.dart';
import 'package:json_annotation/json_annotation.dart';

part 'android.g.dart';

@JsonSerializable(anyMap: true, createToJson: false)
class Android {
  static const kFlavorDimensionValue = 'flavor-type';

  @JsonKey(defaultValue: 'flavor-type')
  final String flavorDimensions;

  @JsonKey(disallowNullValue: true, defaultValue: {})
  final Map<String, ResValue> resValues;

  @JsonKey(disallowNullValue: true, defaultValue: {})
  final Map<String, BuildConfigField> buildConfigFields;

  @JsonKey(disallowNullValue: true, defaultValue: {})
  final Map<String, String> manifestPlaceholders;

  const Android({
    this.flavorDimensions = kFlavorDimensionValue,
    this.resValues = const {},
    this.buildConfigFields = const {},
    this.manifestPlaceholders = const {},
  });

  factory Android.fromJson(Map<String, dynamic> json) =>
      _$AndroidFromJson(json);
}
