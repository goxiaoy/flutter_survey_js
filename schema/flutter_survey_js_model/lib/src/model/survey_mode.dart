//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'survey_mode.g.dart';

class SurveyMode extends EnumClass {

  @BuiltValueEnumConst(wireName: r'edit')
  static const SurveyMode edit = _$edit;
  @BuiltValueEnumConst(wireName: r'display')
  static const SurveyMode display = _$display;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const SurveyMode unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<SurveyMode> get serializer => _$surveyModeSerializer;

  const SurveyMode._(String name): super(name);

  static BuiltSet<SurveyMode> get values => _$values;
  static SurveyMode valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class SurveyModeMixin = Object with _$SurveyModeMixin;

