// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'survey_show_question_numbers_any_of.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SurveyShowQuestionNumbersAnyOf _$on_ =
    const SurveyShowQuestionNumbersAnyOf._('on_');
const SurveyShowQuestionNumbersAnyOf _$onPage =
    const SurveyShowQuestionNumbersAnyOf._('onPage');
const SurveyShowQuestionNumbersAnyOf _$off =
    const SurveyShowQuestionNumbersAnyOf._('off');
const SurveyShowQuestionNumbersAnyOf _$unknownDefaultOpenApi =
    const SurveyShowQuestionNumbersAnyOf._('unknownDefaultOpenApi');

SurveyShowQuestionNumbersAnyOf _$valueOf(String name) {
  switch (name) {
    case 'on_':
      return _$on_;
    case 'onPage':
      return _$onPage;
    case 'off':
      return _$off;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<SurveyShowQuestionNumbersAnyOf> _$values = new BuiltSet<
    SurveyShowQuestionNumbersAnyOf>(const <SurveyShowQuestionNumbersAnyOf>[
  _$on_,
  _$onPage,
  _$off,
  _$unknownDefaultOpenApi,
]);

class _$SurveyShowQuestionNumbersAnyOfMeta {
  const _$SurveyShowQuestionNumbersAnyOfMeta();
  SurveyShowQuestionNumbersAnyOf get on_ => _$on_;
  SurveyShowQuestionNumbersAnyOf get onPage => _$onPage;
  SurveyShowQuestionNumbersAnyOf get off => _$off;
  SurveyShowQuestionNumbersAnyOf get unknownDefaultOpenApi =>
      _$unknownDefaultOpenApi;
  SurveyShowQuestionNumbersAnyOf valueOf(String name) => _$valueOf(name);
  BuiltSet<SurveyShowQuestionNumbersAnyOf> get values => _$values;
}

abstract class _$SurveyShowQuestionNumbersAnyOfMixin {
  // ignore: non_constant_identifier_names
  _$SurveyShowQuestionNumbersAnyOfMeta get SurveyShowQuestionNumbersAnyOf =>
      const _$SurveyShowQuestionNumbersAnyOfMeta();
}

Serializer<SurveyShowQuestionNumbersAnyOf>
    _$surveyShowQuestionNumbersAnyOfSerializer =
    new _$SurveyShowQuestionNumbersAnyOfSerializer();

class _$SurveyShowQuestionNumbersAnyOfSerializer
    implements PrimitiveSerializer<SurveyShowQuestionNumbersAnyOf> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'on_': 'on',
    'onPage': 'onPage',
    'off': 'off',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'on': 'on_',
    'onPage': 'onPage',
    'off': 'off',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[SurveyShowQuestionNumbersAnyOf];
  @override
  final String wireName = 'SurveyShowQuestionNumbersAnyOf';

  @override
  Object serialize(
          Serializers serializers, SurveyShowQuestionNumbersAnyOf object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SurveyShowQuestionNumbersAnyOf deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SurveyShowQuestionNumbersAnyOf.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
