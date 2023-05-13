// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'survey_background_image_fit.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SurveyBackgroundImageFit _$auto =
    const SurveyBackgroundImageFit._('auto');
const SurveyBackgroundImageFit _$contain =
    const SurveyBackgroundImageFit._('contain');
const SurveyBackgroundImageFit _$cover =
    const SurveyBackgroundImageFit._('cover');
const SurveyBackgroundImageFit _$unknownDefaultOpenApi =
    const SurveyBackgroundImageFit._('unknownDefaultOpenApi');

SurveyBackgroundImageFit _$valueOf(String name) {
  switch (name) {
    case 'auto':
      return _$auto;
    case 'contain':
      return _$contain;
    case 'cover':
      return _$cover;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<SurveyBackgroundImageFit> _$values =
    new BuiltSet<SurveyBackgroundImageFit>(const <SurveyBackgroundImageFit>[
  _$auto,
  _$contain,
  _$cover,
  _$unknownDefaultOpenApi,
]);

class _$SurveyBackgroundImageFitMeta {
  const _$SurveyBackgroundImageFitMeta();
  SurveyBackgroundImageFit get auto => _$auto;
  SurveyBackgroundImageFit get contain => _$contain;
  SurveyBackgroundImageFit get cover => _$cover;
  SurveyBackgroundImageFit get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  SurveyBackgroundImageFit valueOf(String name) => _$valueOf(name);
  BuiltSet<SurveyBackgroundImageFit> get values => _$values;
}

abstract class _$SurveyBackgroundImageFitMixin {
  // ignore: non_constant_identifier_names
  _$SurveyBackgroundImageFitMeta get SurveyBackgroundImageFit =>
      const _$SurveyBackgroundImageFitMeta();
}

Serializer<SurveyBackgroundImageFit> _$surveyBackgroundImageFitSerializer =
    new _$SurveyBackgroundImageFitSerializer();

class _$SurveyBackgroundImageFitSerializer
    implements PrimitiveSerializer<SurveyBackgroundImageFit> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'auto': 'auto',
    'contain': 'contain',
    'cover': 'cover',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'auto': 'auto',
    'contain': 'contain',
    'cover': 'cover',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[SurveyBackgroundImageFit];
  @override
  final String wireName = 'SurveyBackgroundImageFit';

  @override
  Object serialize(Serializers serializers, SurveyBackgroundImageFit object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SurveyBackgroundImageFit deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SurveyBackgroundImageFit.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
