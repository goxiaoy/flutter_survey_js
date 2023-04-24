//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'survey_show_question_numbers_one_of.g.dart';

class SurveyShowQuestionNumbersOneOf extends EnumClass {

  @BuiltValueEnumConst(wireName: r'true')
  static const SurveyShowQuestionNumbersOneOf true_ = _$true_;
  @BuiltValueEnumConst(wireName: r'onPage')
  static const SurveyShowQuestionNumbersOneOf onPage = _$onPage;
  @BuiltValueEnumConst(wireName: r'false')
  static const SurveyShowQuestionNumbersOneOf false_ = _$false_;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const SurveyShowQuestionNumbersOneOf unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<SurveyShowQuestionNumbersOneOf> get serializer => _$surveyShowQuestionNumbersOneOfSerializer;

  const SurveyShowQuestionNumbersOneOf._(String name): super(name);

  static BuiltSet<SurveyShowQuestionNumbersOneOf> get values => _$values;
  static SurveyShowQuestionNumbersOneOf valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class SurveyShowQuestionNumbersOneOfMixin = Object with _$SurveyShowQuestionNumbersOneOfMixin;

