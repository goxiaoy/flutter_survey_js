// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'survey_progress_bar_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SurveyProgressBarType _$pages = const SurveyProgressBarType._('pages');
const SurveyProgressBarType _$questions =
    const SurveyProgressBarType._('questions');
const SurveyProgressBarType _$requiredQuestions =
    const SurveyProgressBarType._('requiredQuestions');
const SurveyProgressBarType _$correctQuestions =
    const SurveyProgressBarType._('correctQuestions');
const SurveyProgressBarType _$buttons =
    const SurveyProgressBarType._('buttons');
const SurveyProgressBarType _$unknownDefaultOpenApi =
    const SurveyProgressBarType._('unknownDefaultOpenApi');

SurveyProgressBarType _$valueOf(String name) {
  switch (name) {
    case 'pages':
      return _$pages;
    case 'questions':
      return _$questions;
    case 'requiredQuestions':
      return _$requiredQuestions;
    case 'correctQuestions':
      return _$correctQuestions;
    case 'buttons':
      return _$buttons;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<SurveyProgressBarType> _$values =
    new BuiltSet<SurveyProgressBarType>(const <SurveyProgressBarType>[
  _$pages,
  _$questions,
  _$requiredQuestions,
  _$correctQuestions,
  _$buttons,
  _$unknownDefaultOpenApi,
]);

class _$SurveyProgressBarTypeMeta {
  const _$SurveyProgressBarTypeMeta();
  SurveyProgressBarType get pages => _$pages;
  SurveyProgressBarType get questions => _$questions;
  SurveyProgressBarType get requiredQuestions => _$requiredQuestions;
  SurveyProgressBarType get correctQuestions => _$correctQuestions;
  SurveyProgressBarType get buttons => _$buttons;
  SurveyProgressBarType get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  SurveyProgressBarType valueOf(String name) => _$valueOf(name);
  BuiltSet<SurveyProgressBarType> get values => _$values;
}

abstract class _$SurveyProgressBarTypeMixin {
  // ignore: non_constant_identifier_names
  _$SurveyProgressBarTypeMeta get SurveyProgressBarType =>
      const _$SurveyProgressBarTypeMeta();
}

Serializer<SurveyProgressBarType> _$surveyProgressBarTypeSerializer =
    new _$SurveyProgressBarTypeSerializer();

class _$SurveyProgressBarTypeSerializer
    implements PrimitiveSerializer<SurveyProgressBarType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'pages': 'pages',
    'questions': 'questions',
    'requiredQuestions': 'requiredQuestions',
    'correctQuestions': 'correctQuestions',
    'buttons': 'buttons',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'pages': 'pages',
    'questions': 'questions',
    'requiredQuestions': 'requiredQuestions',
    'correctQuestions': 'correctQuestions',
    'buttons': 'buttons',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[SurveyProgressBarType];
  @override
  final String wireName = 'SurveyProgressBarType';

  @override
  Object serialize(Serializers serializers, SurveyProgressBarType object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SurveyProgressBarType deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SurveyProgressBarType.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
