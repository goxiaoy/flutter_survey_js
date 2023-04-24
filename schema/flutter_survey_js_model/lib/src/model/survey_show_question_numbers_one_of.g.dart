// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'survey_show_question_numbers_one_of.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SurveyShowQuestionNumbersOneOf _$true_ =
    const SurveyShowQuestionNumbersOneOf._('true_');
const SurveyShowQuestionNumbersOneOf _$onPage =
    const SurveyShowQuestionNumbersOneOf._('onPage');
const SurveyShowQuestionNumbersOneOf _$false_ =
    const SurveyShowQuestionNumbersOneOf._('false_');
const SurveyShowQuestionNumbersOneOf _$unknownDefaultOpenApi =
    const SurveyShowQuestionNumbersOneOf._('unknownDefaultOpenApi');

SurveyShowQuestionNumbersOneOf _$valueOf(String name) {
  switch (name) {
    case 'true_':
      return _$true_;
    case 'onPage':
      return _$onPage;
    case 'false_':
      return _$false_;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<SurveyShowQuestionNumbersOneOf> _$values = new BuiltSet<
    SurveyShowQuestionNumbersOneOf>(const <SurveyShowQuestionNumbersOneOf>[
  _$true_,
  _$onPage,
  _$false_,
  _$unknownDefaultOpenApi,
]);

class _$SurveyShowQuestionNumbersOneOfMeta {
  const _$SurveyShowQuestionNumbersOneOfMeta();
  SurveyShowQuestionNumbersOneOf get true_ => _$true_;
  SurveyShowQuestionNumbersOneOf get onPage => _$onPage;
  SurveyShowQuestionNumbersOneOf get false_ => _$false_;
  SurveyShowQuestionNumbersOneOf get unknownDefaultOpenApi =>
      _$unknownDefaultOpenApi;
  SurveyShowQuestionNumbersOneOf valueOf(String name) => _$valueOf(name);
  BuiltSet<SurveyShowQuestionNumbersOneOf> get values => _$values;
}

abstract class _$SurveyShowQuestionNumbersOneOfMixin {
  // ignore: non_constant_identifier_names
  _$SurveyShowQuestionNumbersOneOfMeta get SurveyShowQuestionNumbersOneOf =>
      const _$SurveyShowQuestionNumbersOneOfMeta();
}

Serializer<SurveyShowQuestionNumbersOneOf>
    _$surveyShowQuestionNumbersOneOfSerializer =
    new _$SurveyShowQuestionNumbersOneOfSerializer();

class _$SurveyShowQuestionNumbersOneOfSerializer
    implements PrimitiveSerializer<SurveyShowQuestionNumbersOneOf> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'true_': 'true',
    'onPage': 'onPage',
    'false_': 'false',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'true': 'true_',
    'onPage': 'onPage',
    'false': 'false_',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[SurveyShowQuestionNumbersOneOf];
  @override
  final String wireName = 'SurveyShowQuestionNumbersOneOf';

  @override
  Object serialize(
          Serializers serializers, SurveyShowQuestionNumbersOneOf object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SurveyShowQuestionNumbersOneOf deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SurveyShowQuestionNumbersOneOf.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
