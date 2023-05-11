// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'survey_text_update_mode.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SurveyTextUpdateMode _$onBlur = const SurveyTextUpdateMode._('onBlur');
const SurveyTextUpdateMode _$onTyping =
    const SurveyTextUpdateMode._('onTyping');
const SurveyTextUpdateMode _$unknownDefaultOpenApi =
    const SurveyTextUpdateMode._('unknownDefaultOpenApi');

SurveyTextUpdateMode _$valueOf(String name) {
  switch (name) {
    case 'onBlur':
      return _$onBlur;
    case 'onTyping':
      return _$onTyping;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<SurveyTextUpdateMode> _$values =
    new BuiltSet<SurveyTextUpdateMode>(const <SurveyTextUpdateMode>[
  _$onBlur,
  _$onTyping,
  _$unknownDefaultOpenApi,
]);

class _$SurveyTextUpdateModeMeta {
  const _$SurveyTextUpdateModeMeta();
  SurveyTextUpdateMode get onBlur => _$onBlur;
  SurveyTextUpdateMode get onTyping => _$onTyping;
  SurveyTextUpdateMode get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  SurveyTextUpdateMode valueOf(String name) => _$valueOf(name);
  BuiltSet<SurveyTextUpdateMode> get values => _$values;
}

abstract class _$SurveyTextUpdateModeMixin {
  // ignore: non_constant_identifier_names
  _$SurveyTextUpdateModeMeta get SurveyTextUpdateMode =>
      const _$SurveyTextUpdateModeMeta();
}

Serializer<SurveyTextUpdateMode> _$surveyTextUpdateModeSerializer =
    new _$SurveyTextUpdateModeSerializer();

class _$SurveyTextUpdateModeSerializer
    implements PrimitiveSerializer<SurveyTextUpdateMode> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'onBlur': 'onBlur',
    'onTyping': 'onTyping',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'onBlur': 'onBlur',
    'onTyping': 'onTyping',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[SurveyTextUpdateMode];
  @override
  final String wireName = 'SurveyTextUpdateMode';

  @override
  Object serialize(Serializers serializers, SurveyTextUpdateMode object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SurveyTextUpdateMode deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SurveyTextUpdateMode.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
