//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'survey_show_progress_bar.g.dart';

class SurveyShowProgressBar extends EnumClass {

  @BuiltValueEnumConst(wireName: r'off')
  static const SurveyShowProgressBar off = _$off;
  @BuiltValueEnumConst(wireName: r'top')
  static const SurveyShowProgressBar top = _$top;
  @BuiltValueEnumConst(wireName: r'bottom')
  static const SurveyShowProgressBar bottom = _$bottom;
  @BuiltValueEnumConst(wireName: r'both')
  static const SurveyShowProgressBar both = _$both;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const SurveyShowProgressBar unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<SurveyShowProgressBar> get serializer => _$surveyShowProgressBarSerializer;

  const SurveyShowProgressBar._(String name): super(name);

  static BuiltSet<SurveyShowProgressBar> get values => _$values;
  static SurveyShowProgressBar valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class SurveyShowProgressBarMixin = Object with _$SurveyShowProgressBarMixin;

