// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'survey_question_error_location.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SurveyQuestionErrorLocation _$top =
    const SurveyQuestionErrorLocation._('top');
const SurveyQuestionErrorLocation _$bottom =
    const SurveyQuestionErrorLocation._('bottom');
const SurveyQuestionErrorLocation _$unknownDefaultOpenApi =
    const SurveyQuestionErrorLocation._('unknownDefaultOpenApi');

SurveyQuestionErrorLocation _$valueOf(String name) {
  switch (name) {
    case 'top':
      return _$top;
    case 'bottom':
      return _$bottom;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<SurveyQuestionErrorLocation> _$values = new BuiltSet<
    SurveyQuestionErrorLocation>(const <SurveyQuestionErrorLocation>[
  _$top,
  _$bottom,
  _$unknownDefaultOpenApi,
]);

class _$SurveyQuestionErrorLocationMeta {
  const _$SurveyQuestionErrorLocationMeta();
  SurveyQuestionErrorLocation get top => _$top;
  SurveyQuestionErrorLocation get bottom => _$bottom;
  SurveyQuestionErrorLocation get unknownDefaultOpenApi =>
      _$unknownDefaultOpenApi;
  SurveyQuestionErrorLocation valueOf(String name) => _$valueOf(name);
  BuiltSet<SurveyQuestionErrorLocation> get values => _$values;
}

abstract class _$SurveyQuestionErrorLocationMixin {
  // ignore: non_constant_identifier_names
  _$SurveyQuestionErrorLocationMeta get SurveyQuestionErrorLocation =>
      const _$SurveyQuestionErrorLocationMeta();
}

Serializer<SurveyQuestionErrorLocation>
    _$surveyQuestionErrorLocationSerializer =
    new _$SurveyQuestionErrorLocationSerializer();

class _$SurveyQuestionErrorLocationSerializer
    implements PrimitiveSerializer<SurveyQuestionErrorLocation> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'top': 'top',
    'bottom': 'bottom',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'top': 'top',
    'bottom': 'bottom',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[SurveyQuestionErrorLocation];
  @override
  final String wireName = 'SurveyQuestionErrorLocation';

  @override
  Object serialize(Serializers serializers, SurveyQuestionErrorLocation object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SurveyQuestionErrorLocation deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SurveyQuestionErrorLocation.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
