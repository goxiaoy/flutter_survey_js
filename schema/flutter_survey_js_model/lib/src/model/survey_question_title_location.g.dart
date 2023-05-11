// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'survey_question_title_location.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SurveyQuestionTitleLocation _$top =
    const SurveyQuestionTitleLocation._('top');
const SurveyQuestionTitleLocation _$bottom =
    const SurveyQuestionTitleLocation._('bottom');
const SurveyQuestionTitleLocation _$left =
    const SurveyQuestionTitleLocation._('left');
const SurveyQuestionTitleLocation _$unknownDefaultOpenApi =
    const SurveyQuestionTitleLocation._('unknownDefaultOpenApi');

SurveyQuestionTitleLocation _$valueOf(String name) {
  switch (name) {
    case 'top':
      return _$top;
    case 'bottom':
      return _$bottom;
    case 'left':
      return _$left;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<SurveyQuestionTitleLocation> _$values = new BuiltSet<
    SurveyQuestionTitleLocation>(const <SurveyQuestionTitleLocation>[
  _$top,
  _$bottom,
  _$left,
  _$unknownDefaultOpenApi,
]);

class _$SurveyQuestionTitleLocationMeta {
  const _$SurveyQuestionTitleLocationMeta();
  SurveyQuestionTitleLocation get top => _$top;
  SurveyQuestionTitleLocation get bottom => _$bottom;
  SurveyQuestionTitleLocation get left => _$left;
  SurveyQuestionTitleLocation get unknownDefaultOpenApi =>
      _$unknownDefaultOpenApi;
  SurveyQuestionTitleLocation valueOf(String name) => _$valueOf(name);
  BuiltSet<SurveyQuestionTitleLocation> get values => _$values;
}

abstract class _$SurveyQuestionTitleLocationMixin {
  // ignore: non_constant_identifier_names
  _$SurveyQuestionTitleLocationMeta get SurveyQuestionTitleLocation =>
      const _$SurveyQuestionTitleLocationMeta();
}

Serializer<SurveyQuestionTitleLocation>
    _$surveyQuestionTitleLocationSerializer =
    new _$SurveyQuestionTitleLocationSerializer();

class _$SurveyQuestionTitleLocationSerializer
    implements PrimitiveSerializer<SurveyQuestionTitleLocation> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'top': 'top',
    'bottom': 'bottom',
    'left': 'left',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'top': 'top',
    'bottom': 'bottom',
    'left': 'left',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[SurveyQuestionTitleLocation];
  @override
  final String wireName = 'SurveyQuestionTitleLocation';

  @override
  Object serialize(Serializers serializers, SurveyQuestionTitleLocation object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SurveyQuestionTitleLocation deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SurveyQuestionTitleLocation.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
