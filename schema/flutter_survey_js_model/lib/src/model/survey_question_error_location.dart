//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'survey_question_error_location.g.dart';

class SurveyQuestionErrorLocation extends EnumClass {

  @BuiltValueEnumConst(wireName: r'top')
  static const SurveyQuestionErrorLocation top = _$top;
  @BuiltValueEnumConst(wireName: r'bottom')
  static const SurveyQuestionErrorLocation bottom = _$bottom;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const SurveyQuestionErrorLocation unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<SurveyQuestionErrorLocation> get serializer => _$surveyQuestionErrorLocationSerializer;

  const SurveyQuestionErrorLocation._(String name): super(name);

  static BuiltSet<SurveyQuestionErrorLocation> get values => _$values;
  static SurveyQuestionErrorLocation valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class SurveyQuestionErrorLocationMixin = Object with _$SurveyQuestionErrorLocationMixin;

