//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'survey_logo_position.g.dart';

class SurveyLogoPosition extends EnumClass {

  @BuiltValueEnumConst(wireName: r'none')
  static const SurveyLogoPosition none = _$none;
  @BuiltValueEnumConst(wireName: r'left')
  static const SurveyLogoPosition left = _$left;
  @BuiltValueEnumConst(wireName: r'right')
  static const SurveyLogoPosition right = _$right;
  @BuiltValueEnumConst(wireName: r'top')
  static const SurveyLogoPosition top = _$top;
  @BuiltValueEnumConst(wireName: r'bottom')
  static const SurveyLogoPosition bottom = _$bottom;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const SurveyLogoPosition unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<SurveyLogoPosition> get serializer => _$surveyLogoPositionSerializer;

  const SurveyLogoPosition._(String name): super(name);

  static BuiltSet<SurveyLogoPosition> get values => _$values;
  static SurveyLogoPosition valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class SurveyLogoPositionMixin = Object with _$SurveyLogoPositionMixin;

