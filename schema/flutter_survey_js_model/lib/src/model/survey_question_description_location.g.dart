// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'survey_question_description_location.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SurveyQuestionDescriptionLocation _$underInput =
    const SurveyQuestionDescriptionLocation._('underInput');
const SurveyQuestionDescriptionLocation _$underTitle =
    const SurveyQuestionDescriptionLocation._('underTitle');
const SurveyQuestionDescriptionLocation _$unknownDefaultOpenApi =
    const SurveyQuestionDescriptionLocation._('unknownDefaultOpenApi');

SurveyQuestionDescriptionLocation _$valueOf(String name) {
  switch (name) {
    case 'underInput':
      return _$underInput;
    case 'underTitle':
      return _$underTitle;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<SurveyQuestionDescriptionLocation> _$values = new BuiltSet<
    SurveyQuestionDescriptionLocation>(const <SurveyQuestionDescriptionLocation>[
  _$underInput,
  _$underTitle,
  _$unknownDefaultOpenApi,
]);

class _$SurveyQuestionDescriptionLocationMeta {
  const _$SurveyQuestionDescriptionLocationMeta();
  SurveyQuestionDescriptionLocation get underInput => _$underInput;
  SurveyQuestionDescriptionLocation get underTitle => _$underTitle;
  SurveyQuestionDescriptionLocation get unknownDefaultOpenApi =>
      _$unknownDefaultOpenApi;
  SurveyQuestionDescriptionLocation valueOf(String name) => _$valueOf(name);
  BuiltSet<SurveyQuestionDescriptionLocation> get values => _$values;
}

abstract class _$SurveyQuestionDescriptionLocationMixin {
  // ignore: non_constant_identifier_names
  _$SurveyQuestionDescriptionLocationMeta
      get SurveyQuestionDescriptionLocation =>
          const _$SurveyQuestionDescriptionLocationMeta();
}

Serializer<SurveyQuestionDescriptionLocation>
    _$surveyQuestionDescriptionLocationSerializer =
    new _$SurveyQuestionDescriptionLocationSerializer();

class _$SurveyQuestionDescriptionLocationSerializer
    implements PrimitiveSerializer<SurveyQuestionDescriptionLocation> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'underInput': 'underInput',
    'underTitle': 'underTitle',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'underInput': 'underInput',
    'underTitle': 'underTitle',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[SurveyQuestionDescriptionLocation];
  @override
  final String wireName = 'SurveyQuestionDescriptionLocation';

  @override
  Object serialize(
          Serializers serializers, SurveyQuestionDescriptionLocation object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SurveyQuestionDescriptionLocation deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SurveyQuestionDescriptionLocation.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
