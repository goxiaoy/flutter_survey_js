//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'survey_question_title_location.g.dart';

class SurveyQuestionTitleLocation extends EnumClass {

  @BuiltValueEnumConst(wireName: r'top')
  static const SurveyQuestionTitleLocation top = _$top;
  @BuiltValueEnumConst(wireName: r'bottom')
  static const SurveyQuestionTitleLocation bottom = _$bottom;
  @BuiltValueEnumConst(wireName: r'left')
  static const SurveyQuestionTitleLocation left = _$left;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const SurveyQuestionTitleLocation unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<SurveyQuestionTitleLocation> get serializer => _$surveyQuestionTitleLocationSerializer;

  const SurveyQuestionTitleLocation._(String name): super(name);

  static BuiltSet<SurveyQuestionTitleLocation> get values => _$values;
  static SurveyQuestionTitleLocation valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class SurveyQuestionTitleLocationMixin = Object with _$SurveyQuestionTitleLocationMixin;

