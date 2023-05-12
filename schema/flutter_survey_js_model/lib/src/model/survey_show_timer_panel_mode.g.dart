// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'survey_show_timer_panel_mode.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SurveyShowTimerPanelMode _$all = const SurveyShowTimerPanelMode._('all');
const SurveyShowTimerPanelMode _$page =
    const SurveyShowTimerPanelMode._('page');
const SurveyShowTimerPanelMode _$survey =
    const SurveyShowTimerPanelMode._('survey');
const SurveyShowTimerPanelMode _$unknownDefaultOpenApi =
    const SurveyShowTimerPanelMode._('unknownDefaultOpenApi');

SurveyShowTimerPanelMode _$valueOf(String name) {
  switch (name) {
    case 'all':
      return _$all;
    case 'page':
      return _$page;
    case 'survey':
      return _$survey;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<SurveyShowTimerPanelMode> _$values =
    new BuiltSet<SurveyShowTimerPanelMode>(const <SurveyShowTimerPanelMode>[
  _$all,
  _$page,
  _$survey,
  _$unknownDefaultOpenApi,
]);

class _$SurveyShowTimerPanelModeMeta {
  const _$SurveyShowTimerPanelModeMeta();
  SurveyShowTimerPanelMode get all => _$all;
  SurveyShowTimerPanelMode get page => _$page;
  SurveyShowTimerPanelMode get survey => _$survey;
  SurveyShowTimerPanelMode get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  SurveyShowTimerPanelMode valueOf(String name) => _$valueOf(name);
  BuiltSet<SurveyShowTimerPanelMode> get values => _$values;
}

abstract class _$SurveyShowTimerPanelModeMixin {
  // ignore: non_constant_identifier_names
  _$SurveyShowTimerPanelModeMeta get SurveyShowTimerPanelMode =>
      const _$SurveyShowTimerPanelModeMeta();
}

Serializer<SurveyShowTimerPanelMode> _$surveyShowTimerPanelModeSerializer =
    new _$SurveyShowTimerPanelModeSerializer();

class _$SurveyShowTimerPanelModeSerializer
    implements PrimitiveSerializer<SurveyShowTimerPanelMode> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'all': 'all',
    'page': 'page',
    'survey': 'survey',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'all': 'all',
    'page': 'page',
    'survey': 'survey',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[SurveyShowTimerPanelMode];
  @override
  final String wireName = 'SurveyShowTimerPanelMode';

  @override
  Object serialize(Serializers serializers, SurveyShowTimerPanelMode object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SurveyShowTimerPanelMode deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SurveyShowTimerPanelMode.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
