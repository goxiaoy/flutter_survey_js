//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'survey_show_timer_panel_mode.g.dart';

class SurveyShowTimerPanelMode extends EnumClass {

  @BuiltValueEnumConst(wireName: r'all')
  static const SurveyShowTimerPanelMode all = _$all;
  @BuiltValueEnumConst(wireName: r'page')
  static const SurveyShowTimerPanelMode page = _$page;
  @BuiltValueEnumConst(wireName: r'survey')
  static const SurveyShowTimerPanelMode survey = _$survey;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const SurveyShowTimerPanelMode unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<SurveyShowTimerPanelMode> get serializer => _$surveyShowTimerPanelModeSerializer;

  const SurveyShowTimerPanelMode._(String name): super(name);

  static BuiltSet<SurveyShowTimerPanelMode> get values => _$values;
  static SurveyShowTimerPanelMode valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class SurveyShowTimerPanelModeMixin = Object with _$SurveyShowTimerPanelModeMixin;

