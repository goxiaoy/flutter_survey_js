// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'survey_width_mode.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SurveyWidthMode _$auto = const SurveyWidthMode._('auto');
const SurveyWidthMode _$static_ = const SurveyWidthMode._('static_');
const SurveyWidthMode _$responsive = const SurveyWidthMode._('responsive');
const SurveyWidthMode _$unknownDefaultOpenApi =
    const SurveyWidthMode._('unknownDefaultOpenApi');

SurveyWidthMode _$valueOf(String name) {
  switch (name) {
    case 'auto':
      return _$auto;
    case 'static_':
      return _$static_;
    case 'responsive':
      return _$responsive;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<SurveyWidthMode> _$values =
    new BuiltSet<SurveyWidthMode>(const <SurveyWidthMode>[
  _$auto,
  _$static_,
  _$responsive,
  _$unknownDefaultOpenApi,
]);

class _$SurveyWidthModeMeta {
  const _$SurveyWidthModeMeta();
  SurveyWidthMode get auto => _$auto;
  SurveyWidthMode get static_ => _$static_;
  SurveyWidthMode get responsive => _$responsive;
  SurveyWidthMode get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  SurveyWidthMode valueOf(String name) => _$valueOf(name);
  BuiltSet<SurveyWidthMode> get values => _$values;
}

abstract class _$SurveyWidthModeMixin {
  // ignore: non_constant_identifier_names
  _$SurveyWidthModeMeta get SurveyWidthMode => const _$SurveyWidthModeMeta();
}

Serializer<SurveyWidthMode> _$surveyWidthModeSerializer =
    new _$SurveyWidthModeSerializer();

class _$SurveyWidthModeSerializer
    implements PrimitiveSerializer<SurveyWidthMode> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'auto': 'auto',
    'static_': 'static',
    'responsive': 'responsive',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'auto': 'auto',
    'static': 'static_',
    'responsive': 'responsive',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[SurveyWidthMode];
  @override
  final String wireName = 'SurveyWidthMode';

  @override
  Object serialize(Serializers serializers, SurveyWidthMode object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SurveyWidthMode deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SurveyWidthMode.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
