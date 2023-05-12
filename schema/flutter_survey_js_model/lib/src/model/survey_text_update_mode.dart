//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'survey_text_update_mode.g.dart';

class SurveyTextUpdateMode extends EnumClass {

  @BuiltValueEnumConst(wireName: r'onBlur')
  static const SurveyTextUpdateMode onBlur = _$onBlur;
  @BuiltValueEnumConst(wireName: r'onTyping')
  static const SurveyTextUpdateMode onTyping = _$onTyping;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const SurveyTextUpdateMode unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<SurveyTextUpdateMode> get serializer => _$surveyTextUpdateModeSerializer;

  const SurveyTextUpdateMode._(String name): super(name);

  static BuiltSet<SurveyTextUpdateMode> get values => _$values;
  static SurveyTextUpdateMode valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class SurveyTextUpdateModeMixin = Object with _$SurveyTextUpdateModeMixin;

