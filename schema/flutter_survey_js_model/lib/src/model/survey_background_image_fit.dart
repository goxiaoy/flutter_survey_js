//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'survey_background_image_fit.g.dart';

class SurveyBackgroundImageFit extends EnumClass {

  @BuiltValueEnumConst(wireName: r'auto')
  static const SurveyBackgroundImageFit auto = _$auto;
  @BuiltValueEnumConst(wireName: r'contain')
  static const SurveyBackgroundImageFit contain = _$contain;
  @BuiltValueEnumConst(wireName: r'cover')
  static const SurveyBackgroundImageFit cover = _$cover;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const SurveyBackgroundImageFit unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<SurveyBackgroundImageFit> get serializer => _$surveyBackgroundImageFitSerializer;

  const SurveyBackgroundImageFit._(String name): super(name);

  static BuiltSet<SurveyBackgroundImageFit> get values => _$values;
  static SurveyBackgroundImageFit valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class SurveyBackgroundImageFitMixin = Object with _$SurveyBackgroundImageFitMixin;

