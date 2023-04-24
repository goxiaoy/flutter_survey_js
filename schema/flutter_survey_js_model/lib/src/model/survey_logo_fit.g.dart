// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'survey_logo_fit.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SurveyLogoFit _$none = const SurveyLogoFit._('none');
const SurveyLogoFit _$contain = const SurveyLogoFit._('contain');
const SurveyLogoFit _$cover = const SurveyLogoFit._('cover');
const SurveyLogoFit _$fill = const SurveyLogoFit._('fill');
const SurveyLogoFit _$unknownDefaultOpenApi =
    const SurveyLogoFit._('unknownDefaultOpenApi');

SurveyLogoFit _$valueOf(String name) {
  switch (name) {
    case 'none':
      return _$none;
    case 'contain':
      return _$contain;
    case 'cover':
      return _$cover;
    case 'fill':
      return _$fill;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<SurveyLogoFit> _$values =
    new BuiltSet<SurveyLogoFit>(const <SurveyLogoFit>[
  _$none,
  _$contain,
  _$cover,
  _$fill,
  _$unknownDefaultOpenApi,
]);

class _$SurveyLogoFitMeta {
  const _$SurveyLogoFitMeta();
  SurveyLogoFit get none => _$none;
  SurveyLogoFit get contain => _$contain;
  SurveyLogoFit get cover => _$cover;
  SurveyLogoFit get fill => _$fill;
  SurveyLogoFit get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  SurveyLogoFit valueOf(String name) => _$valueOf(name);
  BuiltSet<SurveyLogoFit> get values => _$values;
}

abstract class _$SurveyLogoFitMixin {
  // ignore: non_constant_identifier_names
  _$SurveyLogoFitMeta get SurveyLogoFit => const _$SurveyLogoFitMeta();
}

Serializer<SurveyLogoFit> _$surveyLogoFitSerializer =
    new _$SurveyLogoFitSerializer();

class _$SurveyLogoFitSerializer implements PrimitiveSerializer<SurveyLogoFit> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'none': 'none',
    'contain': 'contain',
    'cover': 'cover',
    'fill': 'fill',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'none': 'none',
    'contain': 'contain',
    'cover': 'cover',
    'fill': 'fill',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[SurveyLogoFit];
  @override
  final String wireName = 'SurveyLogoFit';

  @override
  Object serialize(Serializers serializers, SurveyLogoFit object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SurveyLogoFit deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SurveyLogoFit.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
