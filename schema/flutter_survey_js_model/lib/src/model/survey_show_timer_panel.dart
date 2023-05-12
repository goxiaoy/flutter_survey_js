//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'survey_show_timer_panel.g.dart';

class SurveyShowTimerPanel extends EnumClass {

  @BuiltValueEnumConst(wireName: r'none')
  static const SurveyShowTimerPanel none = _$none;
  @BuiltValueEnumConst(wireName: r'top')
  static const SurveyShowTimerPanel top = _$top;
  @BuiltValueEnumConst(wireName: r'bottom')
  static const SurveyShowTimerPanel bottom = _$bottom;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const SurveyShowTimerPanel unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<SurveyShowTimerPanel> get serializer => _$surveyShowTimerPanelSerializer;

  const SurveyShowTimerPanel._(String name): super(name);

  static BuiltSet<SurveyShowTimerPanel> get values => _$values;
  static SurveyShowTimerPanel valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class SurveyShowTimerPanelMixin = Object with _$SurveyShowTimerPanelMixin;

