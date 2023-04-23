// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'survey_show_question_numbers_one_of0.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SurveyShowQuestionNumbersOneOf0 _$true_ =
    const SurveyShowQuestionNumbersOneOf0._('true_');
const SurveyShowQuestionNumbersOneOf0 _$onPage =
    const SurveyShowQuestionNumbersOneOf0._('onPage');
const SurveyShowQuestionNumbersOneOf0 _$false_ =
    const SurveyShowQuestionNumbersOneOf0._('false_');
const SurveyShowQuestionNumbersOneOf0 _$unknownDefaultOpenApi =
    const SurveyShowQuestionNumbersOneOf0._('unknownDefaultOpenApi');

SurveyShowQuestionNumbersOneOf0 _$valueOf(String name) {
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

final BuiltSet<SurveyShowQuestionNumbersOneOf0> _$values = new BuiltSet<
    SurveyShowQuestionNumbersOneOf0>(const <SurveyShowQuestionNumbersOneOf0>[
  _$true_,
  _$onPage,
  _$false_,
  _$unknownDefaultOpenApi,
]);

class _$SurveyShowQuestionNumbersOneOf0Meta {
  const _$SurveyShowQuestionNumbersOneOf0Meta();
  SurveyShowQuestionNumbersOneOf0 get true_ => _$true_;
  SurveyShowQuestionNumbersOneOf0 get onPage => _$onPage;
  SurveyShowQuestionNumbersOneOf0 get false_ => _$false_;
  SurveyShowQuestionNumbersOneOf0 get unknownDefaultOpenApi =>
      _$unknownDefaultOpenApi;
  SurveyShowQuestionNumbersOneOf0 valueOf(String name) => _$valueOf(name);
  BuiltSet<SurveyShowQuestionNumbersOneOf0> get values => _$values;
}

abstract class _$SurveyShowQuestionNumbersOneOf0Mixin {
  // ignore: non_constant_identifier_names
  _$SurveyShowQuestionNumbersOneOf0Meta get SurveyShowQuestionNumbersOneOf0 =>
      const _$SurveyShowQuestionNumbersOneOf0Meta();
}

Serializer<SurveyShowQuestionNumbersOneOf0>
    _$surveyShowQuestionNumbersOneOf0Serializer =
    new _$SurveyShowQuestionNumbersOneOf0Serializer();

class _$SurveyShowQuestionNumbersOneOf0Serializer
    implements PrimitiveSerializer<SurveyShowQuestionNumbersOneOf0> {
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
  final Iterable<Type> types = const <Type>[SurveyShowQuestionNumbersOneOf0];
  @override
  final String wireName = 'SurveyShowQuestionNumbersOneOf0';

  @override
  Object serialize(
          Serializers serializers, SurveyShowQuestionNumbersOneOf0 object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SurveyShowQuestionNumbersOneOf0 deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SurveyShowQuestionNumbersOneOf0.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
