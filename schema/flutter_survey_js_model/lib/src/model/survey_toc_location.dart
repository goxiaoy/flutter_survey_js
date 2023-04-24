//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'survey_toc_location.g.dart';

class SurveyTocLocation extends EnumClass {

  @BuiltValueEnumConst(wireName: r'left')
  static const SurveyTocLocation left = _$left;
  @BuiltValueEnumConst(wireName: r'right')
  static const SurveyTocLocation right = _$right;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const SurveyTocLocation unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<SurveyTocLocation> get serializer => _$surveyTocLocationSerializer;

  const SurveyTocLocation._(String name): super(name);

  static BuiltSet<SurveyTocLocation> get values => _$values;
  static SurveyTocLocation valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class SurveyTocLocationMixin = Object with _$SurveyTocLocationMixin;

