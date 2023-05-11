//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'survey_progress_bar_type.g.dart';

class SurveyProgressBarType extends EnumClass {

  @BuiltValueEnumConst(wireName: r'pages')
  static const SurveyProgressBarType pages = _$pages;
  @BuiltValueEnumConst(wireName: r'questions')
  static const SurveyProgressBarType questions = _$questions;
  @BuiltValueEnumConst(wireName: r'requiredQuestions')
  static const SurveyProgressBarType requiredQuestions = _$requiredQuestions;
  @BuiltValueEnumConst(wireName: r'correctQuestions')
  static const SurveyProgressBarType correctQuestions = _$correctQuestions;
  @BuiltValueEnumConst(wireName: r'buttons')
  static const SurveyProgressBarType buttons = _$buttons;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const SurveyProgressBarType unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<SurveyProgressBarType> get serializer => _$surveyProgressBarTypeSerializer;

  const SurveyProgressBarType._(String name): super(name);

  static BuiltSet<SurveyProgressBarType> get values => _$values;
  static SurveyProgressBarType valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class SurveyProgressBarTypeMixin = Object with _$SurveyProgressBarTypeMixin;

