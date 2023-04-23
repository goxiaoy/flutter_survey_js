//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'survey_show_navigation_buttons.g.dart';

class SurveyShowNavigationButtons extends EnumClass {

  @BuiltValueEnumConst(wireName: r'none')
  static const SurveyShowNavigationButtons none = _$none;
  @BuiltValueEnumConst(wireName: r'top')
  static const SurveyShowNavigationButtons top = _$top;
  @BuiltValueEnumConst(wireName: r'bottom')
  static const SurveyShowNavigationButtons bottom = _$bottom;
  @BuiltValueEnumConst(wireName: r'both')
  static const SurveyShowNavigationButtons both = _$both;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const SurveyShowNavigationButtons unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<SurveyShowNavigationButtons> get serializer => _$surveyShowNavigationButtonsSerializer;

  const SurveyShowNavigationButtons._(String name): super(name);

  static BuiltSet<SurveyShowNavigationButtons> get values => _$values;
  static SurveyShowNavigationButtons valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class SurveyShowNavigationButtonsMixin = Object with _$SurveyShowNavigationButtonsMixin;

