// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'survey_mode.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SurveyMode _$edit = const SurveyMode._('edit');
const SurveyMode _$display = const SurveyMode._('display');
const SurveyMode _$unknownDefaultOpenApi =
    const SurveyMode._('unknownDefaultOpenApi');

SurveyMode _$valueOf(String name) {
  switch (name) {
    case 'edit':
      return _$edit;
    case 'display':
      return _$display;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<SurveyMode> _$values =
    new BuiltSet<SurveyMode>(const <SurveyMode>[
  _$edit,
  _$display,
  _$unknownDefaultOpenApi,
]);

class _$SurveyModeMeta {
  const _$SurveyModeMeta();
  SurveyMode get edit => _$edit;
  SurveyMode get display => _$display;
  SurveyMode get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  SurveyMode valueOf(String name) => _$valueOf(name);
  BuiltSet<SurveyMode> get values => _$values;
}

abstract class _$SurveyModeMixin {
  // ignore: non_constant_identifier_names
  _$SurveyModeMeta get SurveyMode => const _$SurveyModeMeta();
}

Serializer<SurveyMode> _$surveyModeSerializer = new _$SurveyModeSerializer();

class _$SurveyModeSerializer implements PrimitiveSerializer<SurveyMode> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'edit': 'edit',
    'display': 'display',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'edit': 'edit',
    'display': 'display',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[SurveyMode];
  @override
  final String wireName = 'SurveyMode';

  @override
  Object serialize(Serializers serializers, SurveyMode object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SurveyMode deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SurveyMode.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
