//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'survey_check_errors_mode.g.dart';

class SurveyCheckErrorsMode extends EnumClass {

  @BuiltValueEnumConst(wireName: r'onNextPage')
  static const SurveyCheckErrorsMode onNextPage = _$onNextPage;
  @BuiltValueEnumConst(wireName: r'onValueChanged')
  static const SurveyCheckErrorsMode onValueChanged = _$onValueChanged;
  @BuiltValueEnumConst(wireName: r'onValueChanging')
  static const SurveyCheckErrorsMode onValueChanging = _$onValueChanging;
  @BuiltValueEnumConst(wireName: r'onComplete')
  static const SurveyCheckErrorsMode onComplete = _$onComplete;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const SurveyCheckErrorsMode unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<SurveyCheckErrorsMode> get serializer => _$surveyCheckErrorsModeSerializer;

  const SurveyCheckErrorsMode._(String name): super(name);

  static BuiltSet<SurveyCheckErrorsMode> get values => _$values;
  static SurveyCheckErrorsMode valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class SurveyCheckErrorsModeMixin = Object with _$SurveyCheckErrorsModeMixin;

