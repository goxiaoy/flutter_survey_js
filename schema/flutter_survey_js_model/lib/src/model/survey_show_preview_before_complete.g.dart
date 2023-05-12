// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'survey_show_preview_before_complete.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SurveyShowPreviewBeforeComplete _$noPreview =
    const SurveyShowPreviewBeforeComplete._('noPreview');
const SurveyShowPreviewBeforeComplete _$showAllQuestions =
    const SurveyShowPreviewBeforeComplete._('showAllQuestions');
const SurveyShowPreviewBeforeComplete _$showAnsweredQuestions =
    const SurveyShowPreviewBeforeComplete._('showAnsweredQuestions');
const SurveyShowPreviewBeforeComplete _$unknownDefaultOpenApi =
    const SurveyShowPreviewBeforeComplete._('unknownDefaultOpenApi');

SurveyShowPreviewBeforeComplete _$valueOf(String name) {
  switch (name) {
    case 'noPreview':
      return _$noPreview;
    case 'showAllQuestions':
      return _$showAllQuestions;
    case 'showAnsweredQuestions':
      return _$showAnsweredQuestions;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<SurveyShowPreviewBeforeComplete> _$values = new BuiltSet<
    SurveyShowPreviewBeforeComplete>(const <SurveyShowPreviewBeforeComplete>[
  _$noPreview,
  _$showAllQuestions,
  _$showAnsweredQuestions,
  _$unknownDefaultOpenApi,
]);

class _$SurveyShowPreviewBeforeCompleteMeta {
  const _$SurveyShowPreviewBeforeCompleteMeta();
  SurveyShowPreviewBeforeComplete get noPreview => _$noPreview;
  SurveyShowPreviewBeforeComplete get showAllQuestions => _$showAllQuestions;
  SurveyShowPreviewBeforeComplete get showAnsweredQuestions =>
      _$showAnsweredQuestions;
  SurveyShowPreviewBeforeComplete get unknownDefaultOpenApi =>
      _$unknownDefaultOpenApi;
  SurveyShowPreviewBeforeComplete valueOf(String name) => _$valueOf(name);
  BuiltSet<SurveyShowPreviewBeforeComplete> get values => _$values;
}

abstract class _$SurveyShowPreviewBeforeCompleteMixin {
  // ignore: non_constant_identifier_names
  _$SurveyShowPreviewBeforeCompleteMeta get SurveyShowPreviewBeforeComplete =>
      const _$SurveyShowPreviewBeforeCompleteMeta();
}

Serializer<SurveyShowPreviewBeforeComplete>
    _$surveyShowPreviewBeforeCompleteSerializer =
    new _$SurveyShowPreviewBeforeCompleteSerializer();

class _$SurveyShowPreviewBeforeCompleteSerializer
    implements PrimitiveSerializer<SurveyShowPreviewBeforeComplete> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'noPreview': 'noPreview',
    'showAllQuestions': 'showAllQuestions',
    'showAnsweredQuestions': 'showAnsweredQuestions',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'noPreview': 'noPreview',
    'showAllQuestions': 'showAllQuestions',
    'showAnsweredQuestions': 'showAnsweredQuestions',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[SurveyShowPreviewBeforeComplete];
  @override
  final String wireName = 'SurveyShowPreviewBeforeComplete';

  @override
  Object serialize(
          Serializers serializers, SurveyShowPreviewBeforeComplete object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SurveyShowPreviewBeforeComplete deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SurveyShowPreviewBeforeComplete.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
