//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'survey_background_image_attachment.g.dart';

class SurveyBackgroundImageAttachment extends EnumClass {

  @BuiltValueEnumConst(wireName: r'scroll')
  static const SurveyBackgroundImageAttachment scroll = _$scroll;
  @BuiltValueEnumConst(wireName: r'fixed')
  static const SurveyBackgroundImageAttachment fixed = _$fixed;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const SurveyBackgroundImageAttachment unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<SurveyBackgroundImageAttachment> get serializer => _$surveyBackgroundImageAttachmentSerializer;

  const SurveyBackgroundImageAttachment._(String name): super(name);

  static BuiltSet<SurveyBackgroundImageAttachment> get values => _$values;
  static SurveyBackgroundImageAttachment valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class SurveyBackgroundImageAttachmentMixin = Object with _$SurveyBackgroundImageAttachmentMixin;

