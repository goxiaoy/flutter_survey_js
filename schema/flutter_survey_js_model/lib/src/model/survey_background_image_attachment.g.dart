// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'survey_background_image_attachment.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SurveyBackgroundImageAttachment _$scroll =
    const SurveyBackgroundImageAttachment._('scroll');
const SurveyBackgroundImageAttachment _$fixed =
    const SurveyBackgroundImageAttachment._('fixed');
const SurveyBackgroundImageAttachment _$unknownDefaultOpenApi =
    const SurveyBackgroundImageAttachment._('unknownDefaultOpenApi');

SurveyBackgroundImageAttachment _$valueOf(String name) {
  switch (name) {
    case 'scroll':
      return _$scroll;
    case 'fixed':
      return _$fixed;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<SurveyBackgroundImageAttachment> _$values = new BuiltSet<
    SurveyBackgroundImageAttachment>(const <SurveyBackgroundImageAttachment>[
  _$scroll,
  _$fixed,
  _$unknownDefaultOpenApi,
]);

class _$SurveyBackgroundImageAttachmentMeta {
  const _$SurveyBackgroundImageAttachmentMeta();
  SurveyBackgroundImageAttachment get scroll => _$scroll;
  SurveyBackgroundImageAttachment get fixed => _$fixed;
  SurveyBackgroundImageAttachment get unknownDefaultOpenApi =>
      _$unknownDefaultOpenApi;
  SurveyBackgroundImageAttachment valueOf(String name) => _$valueOf(name);
  BuiltSet<SurveyBackgroundImageAttachment> get values => _$values;
}

abstract class _$SurveyBackgroundImageAttachmentMixin {
  // ignore: non_constant_identifier_names
  _$SurveyBackgroundImageAttachmentMeta get SurveyBackgroundImageAttachment =>
      const _$SurveyBackgroundImageAttachmentMeta();
}

Serializer<SurveyBackgroundImageAttachment>
    _$surveyBackgroundImageAttachmentSerializer =
    new _$SurveyBackgroundImageAttachmentSerializer();

class _$SurveyBackgroundImageAttachmentSerializer
    implements PrimitiveSerializer<SurveyBackgroundImageAttachment> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'scroll': 'scroll',
    'fixed': 'fixed',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'scroll': 'scroll',
    'fixed': 'fixed',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[SurveyBackgroundImageAttachment];
  @override
  final String wireName = 'SurveyBackgroundImageAttachment';

  @override
  Object serialize(
          Serializers serializers, SurveyBackgroundImageAttachment object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SurveyBackgroundImageAttachment deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SurveyBackgroundImageAttachment.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
