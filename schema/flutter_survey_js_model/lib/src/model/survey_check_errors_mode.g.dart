// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'survey_check_errors_mode.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SurveyCheckErrorsMode _$onNextPage =
    const SurveyCheckErrorsMode._('onNextPage');
const SurveyCheckErrorsMode _$onValueChanged =
    const SurveyCheckErrorsMode._('onValueChanged');
const SurveyCheckErrorsMode _$onValueChanging =
    const SurveyCheckErrorsMode._('onValueChanging');
const SurveyCheckErrorsMode _$onComplete =
    const SurveyCheckErrorsMode._('onComplete');
const SurveyCheckErrorsMode _$unknownDefaultOpenApi =
    const SurveyCheckErrorsMode._('unknownDefaultOpenApi');

SurveyCheckErrorsMode _$valueOf(String name) {
  switch (name) {
    case 'onNextPage':
      return _$onNextPage;
    case 'onValueChanged':
      return _$onValueChanged;
    case 'onValueChanging':
      return _$onValueChanging;
    case 'onComplete':
      return _$onComplete;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<SurveyCheckErrorsMode> _$values =
    new BuiltSet<SurveyCheckErrorsMode>(const <SurveyCheckErrorsMode>[
  _$onNextPage,
  _$onValueChanged,
  _$onValueChanging,
  _$onComplete,
  _$unknownDefaultOpenApi,
]);

class _$SurveyCheckErrorsModeMeta {
  const _$SurveyCheckErrorsModeMeta();
  SurveyCheckErrorsMode get onNextPage => _$onNextPage;
  SurveyCheckErrorsMode get onValueChanged => _$onValueChanged;
  SurveyCheckErrorsMode get onValueChanging => _$onValueChanging;
  SurveyCheckErrorsMode get onComplete => _$onComplete;
  SurveyCheckErrorsMode get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  SurveyCheckErrorsMode valueOf(String name) => _$valueOf(name);
  BuiltSet<SurveyCheckErrorsMode> get values => _$values;
}

abstract class _$SurveyCheckErrorsModeMixin {
  // ignore: non_constant_identifier_names
  _$SurveyCheckErrorsModeMeta get SurveyCheckErrorsMode =>
      const _$SurveyCheckErrorsModeMeta();
}

Serializer<SurveyCheckErrorsMode> _$surveyCheckErrorsModeSerializer =
    new _$SurveyCheckErrorsModeSerializer();

class _$SurveyCheckErrorsModeSerializer
    implements PrimitiveSerializer<SurveyCheckErrorsMode> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'onNextPage': 'onNextPage',
    'onValueChanged': 'onValueChanged',
    'onValueChanging': 'onValueChanging',
    'onComplete': 'onComplete',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'onNextPage': 'onNextPage',
    'onValueChanged': 'onValueChanged',
    'onValueChanging': 'onValueChanging',
    'onComplete': 'onComplete',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[SurveyCheckErrorsMode];
  @override
  final String wireName = 'SurveyCheckErrorsMode';

  @override
  Object serialize(Serializers serializers, SurveyCheckErrorsMode object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SurveyCheckErrorsMode deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SurveyCheckErrorsMode.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
