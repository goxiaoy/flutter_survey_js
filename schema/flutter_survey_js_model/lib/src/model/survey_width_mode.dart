//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'survey_width_mode.g.dart';

class SurveyWidthMode extends EnumClass {

  @BuiltValueEnumConst(wireName: r'auto')
  static const SurveyWidthMode auto = _$auto;
  @BuiltValueEnumConst(wireName: r'static')
  static const SurveyWidthMode static_ = _$static_;
  @BuiltValueEnumConst(wireName: r'responsive')
  static const SurveyWidthMode responsive = _$responsive;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const SurveyWidthMode unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<SurveyWidthMode> get serializer => _$surveyWidthModeSerializer;

  const SurveyWidthMode._(String name): super(name);

  static BuiltSet<SurveyWidthMode> get values => _$values;
  static SurveyWidthMode valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class SurveyWidthModeMixin = Object with _$SurveyWidthModeMixin;

