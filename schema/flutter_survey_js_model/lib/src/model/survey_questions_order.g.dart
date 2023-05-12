// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'survey_questions_order.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SurveyQuestionsOrder _$initial = const SurveyQuestionsOrder._('initial');
const SurveyQuestionsOrder _$random = const SurveyQuestionsOrder._('random');
const SurveyQuestionsOrder _$unknownDefaultOpenApi =
    const SurveyQuestionsOrder._('unknownDefaultOpenApi');

SurveyQuestionsOrder _$valueOf(String name) {
  switch (name) {
    case 'initial':
      return _$initial;
    case 'random':
      return _$random;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<SurveyQuestionsOrder> _$values =
    new BuiltSet<SurveyQuestionsOrder>(const <SurveyQuestionsOrder>[
  _$initial,
  _$random,
  _$unknownDefaultOpenApi,
]);

class _$SurveyQuestionsOrderMeta {
  const _$SurveyQuestionsOrderMeta();
  SurveyQuestionsOrder get initial => _$initial;
  SurveyQuestionsOrder get random => _$random;
  SurveyQuestionsOrder get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  SurveyQuestionsOrder valueOf(String name) => _$valueOf(name);
  BuiltSet<SurveyQuestionsOrder> get values => _$values;
}

abstract class _$SurveyQuestionsOrderMixin {
  // ignore: non_constant_identifier_names
  _$SurveyQuestionsOrderMeta get SurveyQuestionsOrder =>
      const _$SurveyQuestionsOrderMeta();
}

Serializer<SurveyQuestionsOrder> _$surveyQuestionsOrderSerializer =
    new _$SurveyQuestionsOrderSerializer();

class _$SurveyQuestionsOrderSerializer
    implements PrimitiveSerializer<SurveyQuestionsOrder> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'initial': 'initial',
    'random': 'random',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'initial': 'initial',
    'random': 'random',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[SurveyQuestionsOrder];
  @override
  final String wireName = 'SurveyQuestionsOrder';

  @override
  Object serialize(Serializers serializers, SurveyQuestionsOrder object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SurveyQuestionsOrder deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SurveyQuestionsOrder.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
