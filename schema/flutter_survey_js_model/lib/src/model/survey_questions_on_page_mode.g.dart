// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'survey_questions_on_page_mode.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SurveyQuestionsOnPageMode _$singlePage =
    const SurveyQuestionsOnPageMode._('singlePage');
const SurveyQuestionsOnPageMode _$standard =
    const SurveyQuestionsOnPageMode._('standard');
const SurveyQuestionsOnPageMode _$questionPerPage =
    const SurveyQuestionsOnPageMode._('questionPerPage');
const SurveyQuestionsOnPageMode _$unknownDefaultOpenApi =
    const SurveyQuestionsOnPageMode._('unknownDefaultOpenApi');

SurveyQuestionsOnPageMode _$valueOf(String name) {
  switch (name) {
    case 'singlePage':
      return _$singlePage;
    case 'standard':
      return _$standard;
    case 'questionPerPage':
      return _$questionPerPage;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<SurveyQuestionsOnPageMode> _$values =
    new BuiltSet<SurveyQuestionsOnPageMode>(const <SurveyQuestionsOnPageMode>[
  _$singlePage,
  _$standard,
  _$questionPerPage,
  _$unknownDefaultOpenApi,
]);

class _$SurveyQuestionsOnPageModeMeta {
  const _$SurveyQuestionsOnPageModeMeta();
  SurveyQuestionsOnPageMode get singlePage => _$singlePage;
  SurveyQuestionsOnPageMode get standard => _$standard;
  SurveyQuestionsOnPageMode get questionPerPage => _$questionPerPage;
  SurveyQuestionsOnPageMode get unknownDefaultOpenApi =>
      _$unknownDefaultOpenApi;
  SurveyQuestionsOnPageMode valueOf(String name) => _$valueOf(name);
  BuiltSet<SurveyQuestionsOnPageMode> get values => _$values;
}

abstract class _$SurveyQuestionsOnPageModeMixin {
  // ignore: non_constant_identifier_names
  _$SurveyQuestionsOnPageModeMeta get SurveyQuestionsOnPageMode =>
      const _$SurveyQuestionsOnPageModeMeta();
}

Serializer<SurveyQuestionsOnPageMode> _$surveyQuestionsOnPageModeSerializer =
    new _$SurveyQuestionsOnPageModeSerializer();

class _$SurveyQuestionsOnPageModeSerializer
    implements PrimitiveSerializer<SurveyQuestionsOnPageMode> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'singlePage': 'singlePage',
    'standard': 'standard',
    'questionPerPage': 'questionPerPage',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'singlePage': 'singlePage',
    'standard': 'standard',
    'questionPerPage': 'questionPerPage',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[SurveyQuestionsOnPageMode];
  @override
  final String wireName = 'SurveyQuestionsOnPageMode';

  @override
  Object serialize(Serializers serializers, SurveyQuestionsOnPageMode object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SurveyQuestionsOnPageMode deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SurveyQuestionsOnPageMode.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
