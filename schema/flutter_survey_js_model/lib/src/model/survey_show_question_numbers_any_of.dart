//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'survey_show_question_numbers_any_of.g.dart';

class SurveyShowQuestionNumbersAnyOf extends EnumClass {

  @BuiltValueEnumConst(wireName: r'on')
  static const SurveyShowQuestionNumbersAnyOf on_ = _$on_;
  @BuiltValueEnumConst(wireName: r'onPage')
  static const SurveyShowQuestionNumbersAnyOf onPage = _$onPage;
  @BuiltValueEnumConst(wireName: r'off')
  static const SurveyShowQuestionNumbersAnyOf off = _$off;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const SurveyShowQuestionNumbersAnyOf unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<SurveyShowQuestionNumbersAnyOf> get serializer => _$surveyShowQuestionNumbersAnyOfSerializer;

  const SurveyShowQuestionNumbersAnyOf._(String name): super(name);

  static BuiltSet<SurveyShowQuestionNumbersAnyOf> get values => _$values;
  static SurveyShowQuestionNumbersAnyOf valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class SurveyShowQuestionNumbersAnyOfMixin = Object with _$SurveyShowQuestionNumbersAnyOfMixin;

