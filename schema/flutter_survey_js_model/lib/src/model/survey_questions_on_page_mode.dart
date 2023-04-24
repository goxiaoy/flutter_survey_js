//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'survey_questions_on_page_mode.g.dart';

class SurveyQuestionsOnPageMode extends EnumClass {

  @BuiltValueEnumConst(wireName: r'singlePage')
  static const SurveyQuestionsOnPageMode singlePage = _$singlePage;
  @BuiltValueEnumConst(wireName: r'standard')
  static const SurveyQuestionsOnPageMode standard = _$standard;
  @BuiltValueEnumConst(wireName: r'questionPerPage')
  static const SurveyQuestionsOnPageMode questionPerPage = _$questionPerPage;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const SurveyQuestionsOnPageMode unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<SurveyQuestionsOnPageMode> get serializer => _$surveyQuestionsOnPageModeSerializer;

  const SurveyQuestionsOnPageMode._(String name): super(name);

  static BuiltSet<SurveyQuestionsOnPageMode> get values => _$values;
  static SurveyQuestionsOnPageMode valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class SurveyQuestionsOnPageModeMixin = Object with _$SurveyQuestionsOnPageModeMixin;

