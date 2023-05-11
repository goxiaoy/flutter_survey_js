//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'survey_show_preview_before_complete.g.dart';

class SurveyShowPreviewBeforeComplete extends EnumClass {

  @BuiltValueEnumConst(wireName: r'noPreview')
  static const SurveyShowPreviewBeforeComplete noPreview = _$noPreview;
  @BuiltValueEnumConst(wireName: r'showAllQuestions')
  static const SurveyShowPreviewBeforeComplete showAllQuestions = _$showAllQuestions;
  @BuiltValueEnumConst(wireName: r'showAnsweredQuestions')
  static const SurveyShowPreviewBeforeComplete showAnsweredQuestions = _$showAnsweredQuestions;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const SurveyShowPreviewBeforeComplete unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<SurveyShowPreviewBeforeComplete> get serializer => _$surveyShowPreviewBeforeCompleteSerializer;

  const SurveyShowPreviewBeforeComplete._(String name): super(name);

  static BuiltSet<SurveyShowPreviewBeforeComplete> get values => _$values;
  static SurveyShowPreviewBeforeComplete valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class SurveyShowPreviewBeforeCompleteMixin = Object with _$SurveyShowPreviewBeforeCompleteMixin;

